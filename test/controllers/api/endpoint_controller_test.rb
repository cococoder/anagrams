require 'test_helper'

class Api::EndpointControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_endpoint_index_url
    assert_response :success
  end

end
