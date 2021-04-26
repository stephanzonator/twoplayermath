# puts "you also found me!"

class Player
  def initialize()
    @lives = 3
  end

  def subtract
    @lives -= 1
    return @lives
  end
end