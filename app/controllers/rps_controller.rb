class RpsController < ApplicationController

  CHOICES = ['rock', 'scissors', 'paper']

  def new
  end

  def create
    @human = params[:choose].to_s.downcase
    @cpu = CHOICES.sample
    @tie = (@human == @cpu)
    unless @tie
      @cpu_wins = CHOICES.index(@cpu) < CHOICES.index(@human)
      @cpu_wins = false if @cpu == 'rock' && @human == 'paper'
    end
  end

  def show
  end
end
