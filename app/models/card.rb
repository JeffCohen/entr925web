class Card
  SUITS = %w(hearts spades diamonds clubs)
  VALUES = (2..10).to_a + ['jack', 'queen', 'king', 'ace']

  DECK = SUITS.map do |suit|
    VALUES.map do |value|
      "#{value}_of_#{suit}.png"
    end
  end.flatten

  def Card.shuffle
    DECK.shuffle
  end

  def Card.deal(number_of_cards = 5)
    shuffle.sample(number_of_cards)
  end
end
