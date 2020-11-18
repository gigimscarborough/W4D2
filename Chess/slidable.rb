module Slidable
    HORIZONTAL_DIRS = [[0, 1] #up vertical
                      [0,-1 ]  
                      [1, 0 ]
                      [-1, 0]
                    ]
    DIAGONAL_DIRS = [[1,1],[-1,-1], [1,-1], [-1,1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs 
        DIAGONAL_DIRS
    end 

    def moves
    end 

    def move_dirs()
    end 

    def grow_unblocked_moves_in_dir(dx, dy)
       
        c_row, c_col = self.pos
        possible_moves_in_dir = [[c_row,c_col]]
        until !board.valid_moves?
            c_row += dx
            c_col += dy
            possible_moves_in_dir << [c_row, c_col]
            c_row = possible_moves_in_dir.last[0]
            c_col = possible_moves_in_dir.last[1]
        end 
        
    end 
    
end