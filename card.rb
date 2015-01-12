# ---------------------------- #
#                              |
#  This is the card program    |
#  Programmer : Al Dunbar      |
#  Date: 2 Jan 2015            |
#                              |
# ---------------------------- #

class Card
  attr_accessor :rank, :suit                           ## expose ourselves to the public

  RANK = w%[ 2 3 4 5 6 7 8 9 10 Jack Queen King Ace ]  ## 13 ranks   w% white space delimiated
  SUIT = w%[ Spades Hearts Clubs Diamonds ]            ## 4  suits

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"                ## same as "#{@rank} of #{@suit}" 
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
    attr_accessor :cards                               ## expose ourselves to the public
  
  def initialize
    @cards = []
    #@cards << Card.new(10, :spades)
    #@cards << Card.new(9, :diamonds)
    Card::RANK.each do |rank|
         Card::SUIT.each do |suit|
           @cards << Card.new(rank, suit)
         end
   end

  end

  def shuffle
    @cards.shuffle!
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end
end


deck = Deck.new
deck.shuffle
deck.output
