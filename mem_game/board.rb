require_relative 'card.rb'

class Board
    attr_reader :grid

    def initialize(num)
        @grid = Array.new(num) {Array.new(num)}
        @num_pairs = num * num / 2
        @cards = []
        (0...@num_pairs).each {|i| @cards << Card.new(i)}
        (0...@num_pairs).each {|i| @cards << Card.new(i)}
        @cards.shuffle!
        populate 

        # vals.map do |ele|
        #     @card = Card.new(ele)
        # end
    end

    def [](row,col)
        #position = row,col 
        @grid[row][col]

    end
    
    def []=(position, value)
        row,col = position
        @grid[row][col] = value
    end


    def populate
        count = 0
        (0...@grid.length).each do |i1|
            (0...@grid.length).each do |i2|
                #unshifter = @cards.unshift
                @grid[i1][i2] = @cards[count]
                count += 1 
            end
        end
        
    end



    def render
        @grid.each do |row|
            row.each do |ele|
                if !ele
                    print " "
                elsif ele.flipped
                    print ele.to_s
                else 
                    print "X"
                end
            end
        puts
        end        
    end

    def won?
        @grid.all? {|row| row.all?{|ele| !ele || ele.flipped}}
    end

    def reveal(guess_pos)
        # row,col = guess_pos
        return false if !@grid[guess_pos]
        @grid[guess_pos].flip if !@grid[guess_pos].flipped
        return true
    end

    def flip_all
        @grid.each.with_index {|row, row_i| row.each.with_index {|ele, ele_i| @grid[row_i][ele_i].flipped = true if ele}}
    end





    
end