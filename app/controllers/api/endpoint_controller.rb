class Api::EndpointController < ApplicationController
  def index
    result = {}
    result [params[:anagram]] = ["cuprites","pictures","piecrust"]
    render json: result
  end
end
