$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lux/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lux"
  s.version     = Lux::VERSION
  s.authors     = ["xxStarSkreamxx"]
  s.email       = ["contact@lolcomps.com"]
  s.homepage    = "http://lolcomps.com/lux"
  s.summary     = "Riot API for RoR"
  s.description = "A thin API wrapper for the riot API"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "httparty"

  s.add_development_dependency "sqlite3"
end
