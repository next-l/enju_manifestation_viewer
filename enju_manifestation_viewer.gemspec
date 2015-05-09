$:.push File.expand_path("../lib", __FILE__)

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

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"] - Dir["spec/dummy/log/*"]

  s.add_dependency "enju_biblio", "~> 0.1.0.pre65"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "enju_leaf", "~> 1.1.0.rc17"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "mysql2"
  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails", "~> 3.2"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "vcr"
  s.add_development_dependency "webmock"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "appraisal"
end
