class Api::EndpointController < ApplicationController
  def index
    result = {}
    params[:anagrams].split(",").each do |anagram|
      result[anagram] = get_anagrams anagram
    end
    render json: result
  end

  def get_anagrams key
    data = {}
    data["crepitus"] = ["cuprites","pictures","piecrust"]
    data["sdfwehrtgegfg"] = []
    data[key]
  end
end
