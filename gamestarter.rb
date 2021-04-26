# puts "you good to go"

class Game
  def initialize()
    puts "initialized"
  end

  player1 = Player.new()
  player2 = Player.new()

  gamehost = Gamehost.new(player1, player2)
  gamehost.start_game



end