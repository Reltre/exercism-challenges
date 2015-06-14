class Year
  def self.leap?(year)
    is_leap = (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
  end
end