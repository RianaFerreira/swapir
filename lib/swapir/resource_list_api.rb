## Retrieve a collection of resources from the Star Wars Api
#
module ResourceListApi
  def self.included(klass)
    # 'included' callback adds the ClassMethods module methods
    # as class methods to the calling class
    klass.extend(ClassMethods)
  end

  module ClassMethods
    [
      "films",
      "people",
      "planets",
      "species",
      "starships",
      "vehicles"
    ].each do |resource|
      # define_method creates a closure which can hold references
      # to large objects that will never be garbage collected
      define_method("get_all_#{resource}") do
        decode(request(resource))
      end
    end
  end
end
