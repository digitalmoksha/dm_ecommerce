$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dm_ecommerce/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dm_ecommerce"
  s.version     = DmEcommerce::VERSION
  s.authors     = ["Brett Walker"]
  s.email       = ["github@digitalmoksha.com"]
  s.homepage    = ""
  s.summary     = "ECommerce"
  s.description = "Wraps ecommerce funtionality"
  s.license     = "TBD"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.1.5"
  
  #--- make sure the following gems are included in your app's Gemfile
  # gem 'dm_ruby_extensions', :git => 'git://github.com/digitalmoksha/dm_ruby_extensions.git'
  # gem 'dm_core', :git => 'git://github.com/digitalmoksha/dm_core.git'
end
