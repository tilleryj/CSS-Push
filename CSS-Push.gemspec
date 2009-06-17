# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{CSS-Push}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jason Tillery", "Vishu Ramanathan"]
  s.date = %q{2009-06-17}
  s.email = %q{tilleryj@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README"
  ]
  s.files = [
    "CSS-Push.gemspec",
     "LICENSE",
     "README",
     "Rakefile",
     "VERSION",
     "lib/CSS-Push.rb",
     "spec/CSS-Push_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/tilleryj/CSS-Push}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{See updates you make to css files appear immediately in all of your browsers without having to refresh.}
  s.test_files = [
    "spec/CSS-Push_spec.rb",
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
