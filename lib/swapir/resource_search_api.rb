module ResourceSearchApi
  def search_films(query)
    # case insensitive search on title
    RestClient.get(api_base_url + "films/?search=#{query}")
  end

  def search_people(query)
    # case insensitive search on name
    RestClient.get(api_base_url + "people/?search=#{query}")
  end

  def search_planets(query)
    # case insensitive search on name
    RestClient.get(api_base_url + "planets/?search=#{query}")
  end

  def search_species(query)
    # case insensitive search on name
    RestClient.get(api_base_url + "species/?search=#{query}")
  end

  def search_starships(query)
    # case insensitive search on name and model
    RestClient.get(api_base_url + "starships/?search=#{query}")
  end

  def search_vehicles(query)
    # case insensitive search on name and model
    RestClient.get(api_base_url + "vehicles/?search=#{query}")
  end
end
