# -*- encoding: utf-8 -*-
# stub: middleman-compass 4.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-compass".freeze
  s.version = "4.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thomas Reynolds".freeze, "Ben Hollis".freeze, "Karl Freeman".freeze]
  s.date = "2015-12-22"
  s.description = "Compass support for Middleman".freeze
  s.email = ["me@tdreyno.com".freeze, "ben@benhollis.net".freeze, "karlfreeman@gmail.com".freeze]
  s.homepage = "https://github.com/middleman/middleman-compass".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Compass support for Middleman".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>.freeze, [">= 4.0.0"])
      s.add_runtime_dependency(%q<compass>.freeze, [">= 1.0.0", "< 2.0.0"])
    else
      s.add_dependency(%q<middleman-core>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<compass>.freeze, [">= 1.0.0", "< 2.0.0"])
    end
  else
    s.add_dependency(%q<middleman-core>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<compass>.freeze, [">= 1.0.0", "< 2.0.0"])
  end
end
