class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end
  
  def reset
    card_arr = RANKS.product(SUITS).shuffle
    @deck = card_arr.map { |rank, suit| Card.new(rank, suit) }.shuffle
  end

  def draw
    reset if @deck.empty?
    @deck.pop    
  end
end

class Card
  include Comparable
  attr_reader :rank, :suit
  
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
  
  def value
    Deck::RANKS.fetch(rank, rank)
  end
  
  def suit_value
    Deck::SUITS.fetch(suit)
  end
  
  def to_s
    "#{rank} of #{suit}"
  end
  
  def <=>(other)
    if self.rank == other.rank
      suit_value <=> other.suit_value
    else
      value <=> other.value
    end
  end
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } #== 4
p drawn.count { |card| card.suit == 'Hearts' } #== 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.
