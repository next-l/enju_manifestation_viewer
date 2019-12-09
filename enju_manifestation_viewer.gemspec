$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "enju_manifestation_viewer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enju_manifestation_viewer"
  s.version     = EnjuManifestationViewer::VERSION
  s.authors     = ["Kosuke Tanabe"]
  s.email       = ["nabeta@fastmail.fm"]
  s.homepage    = "https://github.com/next-l/enju_manifestation_viewer"
  s.summary     = "enju_manifestation_viewer plugin"
  s.description = "embed external contents on Next-L Enju"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"] - Dir["spec/dummy/log/*"]

  s.add_dependency "enju_biblio", "~> 0.5.0.beta.1"

  # s.add_development_dependency "enju_leaf", "~> 3.0.0.beta.1"
  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails", "~> 3.9"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "coveralls"
  s.add_development_dependency "capybara"
  s.add_development_dependency "annotate"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "puma"
  s.add_development_dependency "sunspot_solr", "~> 2.5"
end
