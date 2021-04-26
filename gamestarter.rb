# puts "you good to go"

class Game
  def initialize()
    puts "initialized"
  end

  player1 = Player.new(1)
  player2 = Player.new(2)

  gamehost = Gamehost.new(player1, player2)
  gamehost.start_game



end