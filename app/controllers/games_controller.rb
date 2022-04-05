class GamesController < ApplicationController
  def home
  end

  def new
    @letters = ('A'..'Z').to_a.shuffle[0..7].join
  end

  def score
    input = params[:input]
    if @letters == input
      @result = "Good"
    end
  end
end
