class Board
    def initialize
        @board = Array.new(8) {Array.new(8, nil)}
    end

    def [](pos)
    end

    def []=(pos, val)
    end

    def move_piece
    end

    def valid_pos?(pos)

    end

    def add_piece(piece, pos)
    end

    def checkmate?(color)
    end

    def in_check?(color)
    end

    def find_king(color)
    end

    def piece
    end

    def dup
    end

    def move_piece!(color, start_pos, end_pos)
    end
end