require "byebug"

class Board
    def initialize
        @rows = Array.new(8) {Array.new(8, "_")}
        # @null_piece = NullPiece.new

    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, val)
        # debugger
       row, col = pos
    #    debugger
       @rows[row][col] = val
    end

    def move_piece(start_pos,end_pos)
        if !valid_pos?(start_pos)
            raise "error"
        elsif !valid_pos?(end_pos)
            raise "error"
        else 
        self[end_pos] = self[start_pos]
        self[start_pos] = "_"
        end 

    end

    def valid_pos?(pos)
        row, col = pos
        if row < 0 || row > 7 
            return false
        elsif col < 0 || col > 7
            return false
        end 

        true
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

# chess = Board.new
# chess[20] = 1