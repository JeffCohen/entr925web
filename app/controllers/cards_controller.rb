class CardsController < ApplicationController
  def deal
    @hand = Card.deal(5)
  end
end
