module ResourceApi
  def get_film(id)
    RestClient.get(api_base_url + "films/#{id}")
  end

  def get_person(id)
    RestClient.get(api_base_url + "people/#{id}")
  end

  def get_planet(id)
    RestClient.get(api_base_url + "planets/#{id}")
  end

  def get_species(id)
    RestClient.get(api_base_url + "species/#{id}")
  end

  def get_starship(id)
    RestClient.get(api_base_url + "starships/#{id}")
  end

  def get_vehicle(id)
    RestClient.get(api_base_url + "vehicles/#{id}")
  end
end
