require "minitest/autorun"
require "minitest/pride"
require "swapir"

class SwapirTest < Minitest::Test
  # TODO: Stub star wars api requests for test suite

  describe "Star Wars API integration" do
    def test_swapi_server_is_available
      # skip
      assert Swapir.api_available?
    end

    def test_swapi_base_url_config
      # skip
      assert_equal "http://swapi.co/api/", Swapir.api_base_url
    end
  end

  describe "request for a collection of resources" do
    before do
      @resource_name = "people"
    end

    def test_swapi_request_for_a_collection_of_resources_succeeds
      # skip
      assert_equal 200, Swapir.request(@resource_name).code
    end

    def test_swapi_response_body_contains_data
      # skip
      refute_empty Swapir.request(@resource_name).body
    end

    def test_swapi_response_body_is_a_string_that_should_be_parsed
      # skip
      assert_kind_of String, Swapir.request(@resource_name).body
    end

    def test_swapi_response_is_parsed_into_an_array_of_results
      assert_kind_of Array, Swapir.get_all_people
    end
  end

  describe "request to search for a resource" do
    describe "by name" do
      before do
        @resource = "people/?search=yoda"
      end

      def test_swapi_request_to_find_a_resource_by_name_succeeds
        # skip
        assert_equal 200, Swapir.request(@resource).code
      end

      def test_swapi_request_to_find_a_resource_by_code_succeeds
        # skip
        refute_empty Swapir.request(@resource).body
      end

      def test_swapi_request_to_find_a_resource_that_does_not_exist_fails
        # skip
        assert_equal 404, Swapir.request("nothing").code
      end

      def test_swapi_response_is_parsed_into_an_array_of_results
        assert_kind_of Array, Swapir.search_people("yoda")
      end
    end

    describe "by title" do
      before do
        @resource = "films/?search=hope"
      end

      def test_swapi_request_to_find_a_resource_by_title_succeeds
        # skip
        assert_equal 200, Swapir.request(@resource).code
      end

      def test_swapi_response_body_empty_when_search_has_no_results
        # skip
        assert_equal 0, JSON.parse(Swapir.request("films/?search=baddata"))["count"]
      end

      def test_swapi_request_does_not_fail_when_search_has_no_results
        # skip
        assert_equal 200, Swapir.request("films/?search=baddata").code
      end

      def test_swapi_response_is_parsed_into_an_array_of_results
        assert_kind_of Array, Swapir.search_films("hope")
      end
    end

    describe "by model" do
      before do
        @resource = "starships/?search=wing"
      end

      def test_swapi_request_to_find_a_resource_by_model_succeeds
        # skip
        assert_equal 200, Swapir.request(@resource).code
      end

      def test_swapi_response_body_empty_when_search_has_no_results
        # skip
        assert_equal 0, JSON.parse(Swapir.request("starships/?search=baddata"))["count"]
      end

      def test_swapi_request_does_not_fail_when_search_has_no_results
        # skip
        assert_equal 200, Swapir.request("starships/?search=baddata").code
      end

      def test_swapi_response_is_parsed_into_an_array_of_results
        assert_kind_of Array, Swapir.search_starships("wing")
      end
    end
  end

  describe "request for a single resource" do
    before do
      @resource = "people/20/"
    end

    def test_swapi_request_for_resource_succeeds
      # skip
      assert_equal 200, Swapir.request(@resource).code
    end

    def test_swapi_response_contains_data
      # skip
      refute_empty Swapir.request(@resource).body
    end

    def test_swapi_response_body_is_a_string_that_should_be_parsed
      # skip
      assert_kind_of String, Swapir.request(@resource).body
    end

    def test_swapi_response_is_parsed_into_an_array_of_results
      assert_kind_of Hash, Swapir.find_person(20)
    end
  end
end
