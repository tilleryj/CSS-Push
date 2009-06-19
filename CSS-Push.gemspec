# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{CSS-Push}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.add_dependency('json')
  s.add_dependency('juggernaut')
  s.add_dependency('daemons')

  s.authors = ["Jason Tillery", "Vishu Ramanathan"]
  s.date = %q{2009-06-17}
  s.default_executable = %q{csspush}
  s.email = %q{tilleryj@gmail.com}
  s.executables = ["csspush", "pushify"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".gitignore",
     "CSS-Push.gemspec",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION",
     "bin/csspush",
     "bin/pushify",
     "lib/css_push.rb",
     "lib/css_push_server.rb",
     "install/css_push.js",
     "install/css_push_initializer.rb",
     "install/expressinstall.swf",
     "install/juggernaut.js",
     "install/juggernaut.swf",
     "install/juggernaut.yml",
     "install/juggernaut_hosts.yml",
     "install/swfobject.js",
     "rails/init.rb",
     "spec/spec_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/tilleryj/CSS-Push}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{See updates you make to css files appear immediately in all of your browsers without having to refresh.}
  s.test_files = [
    "spec/css_push_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
