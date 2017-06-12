module ResourceListApi
  def get_all_films
    RestClient.get(api_base_url + "films")
  end

  def get_all_people
    RestClient.get(api_base_url + "people")
  end

  def get_all_planets
    RestClient.get(api_base_url + "planets")
  end

  def get_all_species
    RestClient.get(api_base_url + "species")
  end

  def get_all_starships
    RestClient.get(api_base_url + "starships")
  end

  def get_all_vehicles
    RestClient.get(api_base_url + "vehicles")
  end
end
