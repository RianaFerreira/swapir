## Retrieve a collection of resources from the Star Wars Api
#
require "swapir/swapi_resources"

module ResourceListApi
  def self.included(klass)
    # 'included' callback adds the ClassMethods module methods
    # as class methods to the calling class
    klass.extend(ClassMethods)
  end

  module ClassMethods
    STAR_WARS_API_RESOURCES.each do |resource|
      # define_method creates a closure which can hold references
      # to large objects that will never be garbage collected
      define_method("get_all_#{resource}") do
        decode_results(request(resource))
      end
    end
  end
end
