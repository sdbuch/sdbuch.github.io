# -*- encoding: utf-8 -*-
# stub: jekyll-whiteglass 1.11.3 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-whiteglass".freeze
  s.version = "1.11.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/yous/whiteglass/issues", "changelog_uri" => "https://github.com/yous/whiteglass/blob/master/CHANGELOG.md", "homepage_uri" => "https://github.com/yous/whiteglass", "source_code_uri" => "https://github.com/yous/whiteglass" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chayoung You".freeze]
  s.date = "2023-08-30"
  s.email = ["yousbe@gmail.com".freeze]
  s.homepage = "https://github.com/yous/whiteglass".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Minimal, responsive Jekyll theme for hackers.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<jekyll>.freeze, [">= 3.3"])
    s.add_runtime_dependency(%q<jekyll-archives>.freeze, ["~> 2.1"])
    s.add_runtime_dependency(%q<jekyll-paginate>.freeze, ["~> 1.1"])
    s.add_runtime_dependency(%q<jekyll-sitemap>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<jekyll>.freeze, [">= 3.3"])
    s.add_dependency(%q<jekyll-archives>.freeze, ["~> 2.1"])
    s.add_dependency(%q<jekyll-paginate>.freeze, ["~> 1.1"])
    s.add_dependency(%q<jekyll-sitemap>.freeze, ["~> 1.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
