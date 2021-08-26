class CalcSquares

    def initialize(shoe_size, width, length, square_size)
        @shoe_size = shoe_size.to_s 
        @width = width
        @length = length
        @square_size = square_size 

        @shoe_sizes_in_cm = {'34': 21.7, '42': 27}

    end

    def output
        @width_in_cm = @shoe_sizes_in_cm[@shoe_size.to_sym]*@width
        @length_in_cm = @shoe_sizes_in_cm[@shoe_size.to_sym]*@length

        # nombre de squares pour une taille en cm
        @width_in_squares = (@width_in_cm/@square_size).floor
        @length_in_squares = (@length_in_cm/@square_size).floor

        return [@width_in_squares, @length_in_squares]
    end
end


# # TEST
# a = CalcSquares.new(34, 2, 2, 2.5)
# puts a.output 