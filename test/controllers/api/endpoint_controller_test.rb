require 'test_helper'

class Api::EndpointControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_endpoint_index_url
    assert_response :success
  end

  test "given crepitus should get back cuprites,pictures,piecrust" do
    get api_endpoint_index_url, params: {anagram: "crepitus"}
    actual = JSON.parse(@response.body)
    ["cuprites","pictures","piecrust"].each do |word|
      assert_includes actual["crepitus"], word
    end
  end


end
