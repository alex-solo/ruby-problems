require 'pry'
class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end
  
  def reset
    card_arr = RANKS.product(SUITS).shuffle
    @deck = card_arr.map { |rank, suit| Card.new(rank, suit) }
  end

  def draw
    reset if @deck.empty?
    @deck.pop    
  end
end

class Card
  RANK_VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }
  include Comparable
  attr_reader :rank, :suit
  
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
  
  def value
    RANK_VALUES.fetch(rank, rank)
  end
  
  def to_s
    "#{rank} of #{suit}"
  end
  
  def <=>(other)
    value <=> other.value
  end
end

class PokerHand
  ROYAL = [10, 'Jack', 'Queen', 'King', 'Ace']
  attr_reader :hand
  def initialize(arr_of_cards)
    @hand = arr_of_cards
  end

  def print
    puts hand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private
  
  def sorted_ranks
    hand.sort.map {|card| card.rank }
  end
  
  def suits
    hand.map { |card| card.suit }
  end
  
  def count_cards
    hash = Hash.new(0)
    sorted_ranks.each do |card|
      hash[card] = sorted_ranks.count(card)
    end
    hash
  end

  def royal_flush?
    (sorted_ranks == ROYAL) && flush?
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    sorted_ranks.each do |card|
      return true if sorted_ranks.count(card) == 4
    end
    false
  end

  def full_house?
    three_of_a_kind? && sorted_ranks.uniq.size == 2
  end

  def flush?
    Deck::SUITS.each do |test_suit|
      return true if suits.all? { |suit| suit == test_suit }
    end
    false
  end

  def straight?
    value_arr = hand.sort.map {|card| card.value }
    value_arr.last - value_arr.first == 4 && value_arr.uniq.size == 5
  end

  def three_of_a_kind?
    sorted_ranks.each do |card|
      return true if sorted_ranks.count(card) == 3
    end
    false
  end

  def two_pair?
      count_cards.values.count(2) == 2
  end

  def pair?
    count_cards.values.count(2) == 1
  end
end

#Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])

hand.print

puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'


hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'