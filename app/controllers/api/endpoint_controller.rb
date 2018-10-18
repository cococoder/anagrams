class Api::EndpointController < ApplicationController
  def index
    result = {}
    params[:anagrams].split(",").each do |anagram|
      result[anagram] = get_anagrams anagram
    end
    render json: result
  end

  def get_anagrams anagram
    Word.where(length: anagram.length).
        to_a.select{|word| word.is_anagram_of? anagram}
        .map(&:characters)
  end
end
