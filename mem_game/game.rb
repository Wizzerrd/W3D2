require_relative "board.rb"
require_relative "player.rb"

class Game
    def initialize(num)
        @board = Board.new(num)
        @previous_guess
        @player = Player.new
    end

    def gameOver?
        @board.won?
    end

    def valid?(pos)
        return false if !@board[pos]
        true
    end

    def self.valid?(pos)
        return false if !@board[pos]
        true
    end
        

    end

    def play_loop
        until gameOver?
            @board.render
            input = @player.get_move
            
            if input.all? {|ele| valid?(ele) && !@board[ele].flipped}
                @board[input[0]].value == @board[input[1]].value
                
            end

            
        end
    end

end