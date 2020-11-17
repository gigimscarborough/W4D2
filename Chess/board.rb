class Board
    def initialize
        @board = Array.new(8) {Array.new(8, "_")}
    end

    def [](pos)
        @board[pos[0]][pos[1]]
    end

    def []=(pos, val)
        @board[pos[0]][pos[1]] = val
    end

    def move_piece(start_pos,end_pos)
        # if @board[start_pos].nil? 
        #     raise "error"
        # elsif !@board[end_pos].nil?
        #     raise "error"
        # else 
        # @board[end_pos] = @board[start_pos]
        # @board[start_pos] = "_"

        p @board[start_pos]
        # end 
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