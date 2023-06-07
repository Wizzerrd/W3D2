class Card

    attr_reader  :value
    attr_accessor :flipped

    def initialize(value)
        @value = value
        @flipped = false
    end

    def flip
        @flipped = !@flipped 
    end

    def to_s
        @value.to_s
    end

    # def reveal
    #     if self.@flipped 
    # end

    def == (str)
        self.to_s == str
    end

end