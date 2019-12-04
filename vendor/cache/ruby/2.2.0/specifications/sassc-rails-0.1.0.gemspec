# -*- encoding: utf-8 -*-
# stub: sassc-rails 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sassc-rails".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryan Boland".freeze]
  s.date = "2015-05-18"
  s.description = "Integrate SassC-Ruby into Rails.".freeze
  s.email = ["bolandryanm@gmail.com".freeze]
  s.homepage = "https://github.com/bolandrm/sassc-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.10".freeze
  s.summary = "Integrate SassC-Ruby into Rails.".freeze

  s.installed_by_version = "2.7.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<sass>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<sassc>.freeze, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<tilt>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<rails>.freeze, [">= 4.0.0"])
      s.add_runtime_dependency(%q<sprockets>.freeze, ["> 2.11"])
    else
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
      s.add_dependency(%q<sass>.freeze, [">= 0"])
      s.add_dependency(%q<sassc>.freeze, ["~> 1.2.0"])
      s.add_dependency(%q<tilt>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<sprockets>.freeze, ["> 2.11"])
    end
  else
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<sass>.freeze, [">= 0"])
    s.add_dependency(%q<sassc>.freeze, ["~> 1.2.0"])
    s.add_dependency(%q<tilt>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<sprockets>.freeze, ["> 2.11"])
  end
end
