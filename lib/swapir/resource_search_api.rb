## Search the Star Wars Api for a resource
#
module ResourceSearchApi
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
      define_method("search_#{resource}") do |query|
        decode(request("#{resource}/?search=#{query}"))
      end
    end
  end
end
