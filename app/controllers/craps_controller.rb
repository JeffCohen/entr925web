class CrapsController < ApplicationController

  def show
    @point = params[:point]
  end

  def roll
    @point = params[:point]
    @dice = [rand(1..6), rand(1..6)]
    @total = (@dice.first + @dice.last)
    @win = @point ? (@point.to_i == @total) : ([7, 11].include?(@total))
    @lose = @point ? (@total == 7) : ([2, 3, 12].include?(@total))
    logger.info "Point: #{@point}"
    logger.info "Total: #{@total}"
    logger.info "Win: #{@win}"

    render 'show'
  end

end
