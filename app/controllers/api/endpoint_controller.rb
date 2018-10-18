class NoAnagramGivenError < StandardError

end
class Api::EndpointController < ApplicationController

  rescue_from NoAnagramGivenError do |e|
    render json: {error: e.message}
  end

  def index
    result = {}
    raise NoAnagramGivenError unless params.has_key? :anagrams

    params[:anagrams].split(",").each do |anagram|
      result[anagram] = []
      anagram .split("").permutation() do |item|
        word = item.join()
        result[anagram] << word
      end
     result
    end
    render json: result
  end
end
