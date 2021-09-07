class CalcSquares

  def initialize(shoe_size, width, length, square_size)
    @shoe_size = shoe_size.to_s 
    @width = width
    @length = length
    @square_size = square_size       

    # mettre ici les equivalences de pointures en cm {'pointure': cm}
    @shoe_sizes_in_cm = {
      '16': 9.7,
      '17': 10.4,
      '18': 11,
      '19': 11.7,
      '20': 12.4,
      '21': 13,
      '22': 13.7,
      '23': 14.4,
      '24': 15,
      '25': 15.7,
      '26': 16.4,
      '27': 17,
      '28': 17.7,
      '29': 18.4,
      '30': 19,
      '31': 19.7,
      '32': 20.4,
      '33': 21,
      '34': 21.7,
      '35': 22.4,
      '36': 23,
      '37': 23.7,
      '38': 24.4,
      '39': 25,
      '40': 25.7,
      '41': 26.4,
      '42': 27,
      '43': 27.7,
      '44': 28.4,
      '45': 29,
      '46': 29.7,
      '47': 30.4,
      '48': 31
    }

  end

  def output
    # convertir la pointure et le nombre de pas en cm
    @width_in_cm = @shoe_sizes_in_cm[@shoe_size.to_sym]*@width
    @length_in_cm = @shoe_sizes_in_cm[@shoe_size.to_sym]*@length


    # longueur et largeur en squares à partir de la taille en cm
    @width_in_squares = (@width_in_cm/@square_size).floor
    @length_in_squares = (@length_in_cm/@square_size).floor
    
    return [@width_in_squares, @length_in_squares]
  end
end


# # TEST
# a = CalcSquares.new(34, 2, 2, 2.5)
# puts a.output 