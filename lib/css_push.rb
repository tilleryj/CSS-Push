require "yaml"
require "socket"
require "erb"
require "json"

module CSSPush # :nodoc:
  module PushHelper

    def pushify(options = {})

      hosts = Juggernaut::CONFIG[:hosts].select {|h| !h[:environment] or h[:environment] == ENV['RAILS_ENV'].to_sym }
      random_host = hosts[rand(hosts.length)]
      options = {
        :host                 => (random_host[:public_host] || random_host[:host]),
        :port                 => (random_host[:public_port] || random_host[:port]),
        :width                => '0px',
        :height               => '0px',
        :session_id           => request.session_options[:id],
        :swf_address          => "/juggernaut/juggernaut.swf",
        :ei_swf_address       => "/juggernaut/expressinstall.swf",
        :flash_version        => 8,
        :flash_color          => "#fff",
        :swf_name             => "juggernaut_flash",
        :bridge_name          => "juggernaut",
        :debug                => (RAILS_ENV == 'development'),
        :reconnect_attempts   => 3,
        :reconnect_intervals  => 3
      }.merge(options)
      <<-HTML
        #{ javascript_include_tag :css_push }
        #{ javascript_tag "new Juggernaut(#{options.to_json});" }
      HTML
    end
  end
end

ROOT = Dir.pwd unless defined? ROOT
module Juggernaut
  CONFIG = YAML::load(ERB.new(IO.read("#{ROOT}/config/juggernaut_hosts.yml")).result).freeze
  CR = "\0"

  class << self

    def send_to_all(data)
      fc = {
        :command   => :broadcast,
        :body      => data, 
        :type      => :to_channels,
        :channels  => []
      }
      send_data(fc)
    end

    def send_data(hash, response = false)
      hash[:channels]   = Array(hash[:channels])   if hash[:channels]
      hash[:client_ids] = Array(hash[:client_ids]) if hash[:client_ids]

      res = []
      hosts.each do |address|
        begin
          hash[:secret_key] = address[:secret_key] if address[:secret_key]

          @socket = TCPSocket.new(address[:host], address[:port])
          # the \0 is to mirror flash
          @socket.print(hash.to_json + CR)
          @socket.flush
          res << @socket.readline(CR) if response
        ensure
          @socket.close if @socket and !@socket.closed?
        end
      end
      res.collect {|r| ActiveSupport::JSON.decode(r.chomp!(CR)) } if response
    end

  private

    def hosts
      CONFIG[:hosts].select {|h| 
        !h[:environment] or h[:environment].to_s == ENV['RAILS_ENV']
      }
    end

  end
end
