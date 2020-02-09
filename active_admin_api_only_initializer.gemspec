$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "active_admin_api_only_initializer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "active_admin_api_only_initializer"
  spec.version     = ActiveAdminApiOnlyInitializer::VERSION
  spec.authors     = ["udayan28"]
  spec.email       = ["tks.udagawa@gmail.com"]
  spec.homepage    = "https://github.com/udayan28"
  spec.summary     = "Active Admin Initializer for Rails API-Only"
  spec.description = "Active Admin Initializer for Rails API-Only"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec-rails"
end
