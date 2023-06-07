require_relative 'game.rb'
require_relative 'board.rb'
require_relative 'card.rb'

class Player

    # def initialize
    
    
    def get_move
        taken = false
        while !taken
            taken = true
            p "please enter a coordinates with a space between"
            pos1 = gets.chomp.split(" ").map(&:to_i)
            if Game.valid
        end
        p "please enter second coordinates with a space between"
        pos2 = gets.chomp.split(" ").map(&:to_i)
        [pos1,pos2]
    end




end