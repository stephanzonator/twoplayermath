# puts "you found me!"
class Gamehost
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @end_game = false
    @current_player = player2
    @loser = nil
  end

  def create_question
    number1 = rand(10..15)
    number2 = rand(10..15)
    result = {'question' => "What is #{number1} + #{number2}?", 'answer' => number1 + number2}
    return result
  end
  
  def run_round(player)
    puts "-------CURRENT SCORE-------"
    puts "Player 1: #{@player1.lives} Player 2: #{@player2.lives}"
    puts "-------NEW TURN-------"
    puts "Your turn, #{player.name}!"
    questionHash = create_question
    puts questionHash["question"]
    answer = gets.chomp
    if answer.to_s == "END"
      @end_game = true
    elsif answer.to_s == questionHash["answer"].to_s
      puts "Good work, #{player.name}!"
    else
      lives = player.subtract
      if lives == 0
        @end_game = true
        @loser = player
      end
      puts "Not quite, #{player.name}! You have #{lives} lives left now."
    end
    @current_player = player
    # puts "DEBUG: current player is #{player.name} as of run_round" 
  end

  def start_game
    while @end_game == false
      # puts "DEBUG: current player is #{@current_player.name} as of start game" 
      if @current_player == @player1
        # puts "Running game as player 2"
        run_round(@player2)
      elsif @current_player == @player2
        # puts "Running game as player 1"
        run_round(@player1)
      else
        puts "an error occurred"
      end  
    end 

    if @end_game == true
      puts "Game over!"
      puts "-------Final SCORE-------"
      puts "Player 1: #{@player1.lives} Player 2: #{@player2.lives}"
      puts "Loser is #{@loser.name}"
    end
  end
end