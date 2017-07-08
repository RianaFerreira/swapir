$:.push File.expand_path("../lib", __FILE__)
require "swapir/version"

Gem::Specification.new do |s|
  s.name	= "swapir"
  s.version	= Swapir::VERSION
  s.platform = Gem::Platform::RUBY
  s.date	= "2017-06-25"
  s.summary	= "Star Wars Api wrapper"
  s.description	= "A wrapper gem that handles interactions with the Star Wars Api"
  s.authors	= ["Riana Ferreira"]
  s.email	= ["rianaferreira@gmail.com"]
  s.homepage	= "https://github.com/RianaFerreira/swapir"
  s.license	= "MIT"

  s.add_runtime_dependency "json", "~> 2.0"
  s.add_runtime_dependency "rest-client", "~> 2.0"

  s.files	= [
    "Gemfile",
    "lib/swapir.rb",
    "lib/swapir/resource_api.rb",
    "lib/swapir/resource_list_api.rb",
    "lib/swapir/resource_search_api.rb",
    "lib/swapir/swapi_resources.rb"
  ]
  s.require_paths = ["lib"]
end
