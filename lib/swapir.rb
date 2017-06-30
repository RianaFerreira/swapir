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
    # base Star Wars public api url
    "http://swapi.co/api/"
  end

  def self.api_available?
    # allow an exception to be raised if the request fails
    # handle the raised exception
    begin
      RestClient.get(api_base_url).code == 200
    rescue Errno::ECONNREFUSED => e
      false
    end
  end

  def self.request(resource)
    return "" unless self.api_available?
    # call the Star Wars Api endpoint returns the api response
    # and does not raise an exception when it fails
    begin
      RestClient.get(api_base_url + resource)
    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end

  def self.decode(response)
    # convert the Star Wars Api response body
    # return the data in a Ruby Hash
    JSON.parse(response.body)
  end

  def self.decode_results(response)
    # convert the Star Wars Api response body collection
    # return the data collection in a Ruby Hash
    JSON.parse(response.body)["results"]
  end
end
