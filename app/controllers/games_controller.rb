class GamesController < ApplicationController
  def new
    @new = ('a'..'z').to_a.sample(rand(26))
  end

  def score
    key = params[:answer]
    response = RestClient.get "https://wagon-dictionary.herokuapp.com/#{key}"
    @score = JSON.parse(response)
  end
end
