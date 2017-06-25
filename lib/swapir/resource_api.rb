## Query the Star Wars Api for the details of a specific resource
#
require "swapir/swapi_resources"

module ResourceApi
  def self.included(klass)
    # 'included' callback adds the ClassMethods module methods
    # as class methods to the calling class
    klass.extend(ClassMethods)
  end

  module ClassMethods
    STAR_WARS_API_RESOURCES.each do |resource|
      resource_name = case resource
        when "people" then "person"
        when "species" then resource
        else resource.slice(0...-1)
      end

      # define_method creates a closure which can hold references
      # to large objects that will never be garbage collected
      define_method("find_#{resource_name}") do |id|
        decode(request("#{resource}/#{id}/"))
      end
    end
  end
end
