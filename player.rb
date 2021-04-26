# puts "you also found me!"

class Player
  def initialize(num)
    @lives = 3
    @name = "Player #{num}"
  end

  attr_accessor :name
  attr_accessor :lives

  def subtract
    @lives -= 1
    return @lives
  end
end