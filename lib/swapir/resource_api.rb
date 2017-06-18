## Query the Star Wars Api for the details of a specific resource
#
module ResourceApi
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
      define_method("find_#{resource}") do |id|
        decode(request("#{resource}/#{id}"))
      end
    end
  end

  # def get_film(id)
  #   RestClient.get(api_base_url + "films/#{id}")
  # end
  #
  # def get_person(id)
  #   RestClient.get(api_base_url + "people/#{id}")
  # end
  #
  # def get_planet(id)
  #   RestClient.get(api_base_url + "planets/#{id}")
  # end
  #
  # def get_species(id)
  #   RestClient.get(api_base_url + "species/#{id}")
  # end
  #
  # def get_starship(id)
  #   RestClient.get(api_base_url + "starships/#{id}")
  # end
  #
  # def get_vehicle(id)
  #   RestClient.get(api_base_url + "vehicles/#{id}")
  # end
end
