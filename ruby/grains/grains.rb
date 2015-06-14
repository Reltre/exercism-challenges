class Grains 
  def self.square(square_number)
    if square_number < 1 || square_number > 64
      raise ArgumentError, "The value entered is either below 1 or above 64,
      sorry the king will only grant grains for each square on a chess board."
    end
    2**(square_number - 1)
  end

  def self.total
    (1..64).inject(0) do |total, square_number|
      total + self.square(square_number)
    end
  end
end

