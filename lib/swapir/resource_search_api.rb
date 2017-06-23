## Search the Star Wars Api for a resource
#
require "constants/swapi_resources"

module ResourceSearchApi
  def self.included(klass)
    # 'included' callback adds the ClassMethods module methods
    # as class methods to the calling class
    klass.extend(ClassMethods)
  end

  module ClassMethods
    STAR_WARS_API_RESOURCES.each do |resource|
      # define_method creates a closure which can hold references
      # to large objects that will never be garbage collected
      define_method("search_#{resource}") do |query|
        decode_results(request("#{resource}/?search=#{query}"))
      end
    end
  end
end
