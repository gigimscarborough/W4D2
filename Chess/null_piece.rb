require "singleton"

class NullPiece < Piece
    include Singleton
    attr_reader :symbol

    def initialize
        @symbol = " "
        @color = :none
    end

    def moves
    end
    
    def symbol
    end



end