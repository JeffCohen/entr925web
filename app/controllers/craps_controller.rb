class CrapsController < ApplicationController

  def show
    @point = params[:point]
  end

  def roll
    @point = params[:point]
    logger.info "Here"
    @dice = [rand(1..6), rand(1..6)]
    @total = (@dice.first + @dice.last)
    @win = @point ? (@point == @total) : ([7, 11].include?(@total))
    @lose = @point ? ([7, 11].include?(@total)) : ([2, 3, 12].include?(@total))

    render 'show'
  end

end
