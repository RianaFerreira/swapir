## Star Wars API Request Service
# resources: people, planets, species, starships, and vehicles
# actions: list, find by id, and search by resource
#

# external gem dependencies
require "rest-client"
require "json"
require "byebug"

# internal dependencies
require "swapir/resource_api"
require "swapir/resource_list_api"
require "swapir/resource_search_api"

class Swapir
  include ResourceListApi
  include ResourceApi
  include ResourceSearchApi

  def self.api_base_url
    "http://swapi.co/api/"
  end

  def self.api_available?
    # allow an exception to be raised if the request fails
    # handle the raised exception
    RestClient.get(api_base_url).code == 200
  end

  def self.request(resource)
    RestClient.get(api_base_url + resource)
  end

  def self.decode(response)
    JSON.parse(response.body)["results"]
  end
end
