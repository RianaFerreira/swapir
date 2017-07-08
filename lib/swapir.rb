## Star Wars API Request Service
# resources: people, planets, species, starships, and vehicles
# actions: list, find by id, and search by resource
#

# external gem dependencies
require "rest-client"
require "json"

# internal dependencies
require "swapir/resource_api"
require "swapir/resource_list_api"
require "swapir/resource_search_api"

class Swapir
  include ResourceListApi
  include ResourceApi
  include ResourceSearchApi

  def self.api_base_url
    # base Star Wars public api url
    "http://swapi.co/api/"
  end

  def self.api_available?
    # allow an exception to be raised if the request fails
    # handle the raised exception
    begin
      RestClient.get(api_base_url).code == 200
    rescue RestClient::ExceptionWithResponse => e
      false
    end
  end

  def self.request(resource)
    return "Star Wars API is not available" unless self.api_available?
    # rest-client returns the swapi response with status 200
    # it does not raise an exception when the request fails
    begin
      RestClient.get(api_base_url + resource)
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end

  def self.decode(response)
    # convert the Star Wars Api response body for a single resource
    # return the data in a Ruby Hash
    JSON.parse(response.body)
  end

  def self.decode_results(response)
    # convert the Star Wars Api response body collection
    # return the data collection in a Ruby Hash
    JSON.parse(response.body)["results"]
  end

  def self.paginated_request(resource)
    next_url = api_base_url + resource
    total_records = nil
    collection = []

    loop do
      response = RestClient.get(next_url)
      break if response.code != 200

      total_records = decode(response)["count"]
      data = decode_results(response)
      collection += data

      break if (data.empty? || collection.length >= total_records)
      next_url = decode(response)["next"]
    end

    collection
  end
end
