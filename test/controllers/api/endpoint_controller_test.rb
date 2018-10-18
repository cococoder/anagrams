require 'test_helper'

class Api::EndpointControllerTest < ActionDispatch::IntegrationTest
  test "given crepitus should get back cuprites,pictures,piecrust" do
    get api_endpoint_index_url, params: {anagrams: "crepitus"}
    actual = JSON.parse(@response.body)
    ["cuprites","pictures","piecrust"].each do |word|
      assert_includes actual["crepitus"], word
    end
  end

  test "given sdfwehrtgegfg that does not make a word" do
    get api_endpoint_index_url, params: {anagrams: "sdfwehrtgegfg"}
    actual = JSON.parse(@response.body)
    assert_empty actual['sdfwehrtgegfg']
  end

  test "given crepitus,paste,kinship should get a result for each anagram" do
    get api_endpoint_index_url, params: {anagrams: "crepitus,paste,kinship"}
    actual = JSON.parse(@response.body)
    assert_equal 3,actual.keys.count
  end




end
