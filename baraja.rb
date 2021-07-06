require_relative 'carta.rb'

class Deck
    attr_reader :cards
    def initialize
        # @cards = (1..13).map {|num| %w[C D E T].map { |kind| Card.new(num,kind)}}.flatten
        @cards =[]
        (1..13).each do |num|
            %w[C D E T].each do |kind|
                @cards << Card.new(num,kind)
            end
        end
    end

    def shuffles
        self.cards.shuffle
    end

    def draw
        self.cards.pop
    end

    def initial_draw
        self.cards.pop(5)
    end

end

chinese_cards = Deck.new
pp chinese_cards.shuffles
pp "------"
pp chinese_cards.draw
pp "------"
pp chinese_cards.initial_draw