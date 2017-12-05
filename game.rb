class Game

  def self.main
    game = Game.new
    game.start
  end

  def initialize
    @players = [
      Player.new('Player 1'),
      Player.new('Player 2')
    ]
    @current_player = 0
  end

  def current_player
    @players[@current_player]
  end

  def start
    until game_over? do
      question = Question.new
      puts "#{current_player.name}: Whart does #{question.first_num} plus #{question.second_num} equal?"
      if gets.chomp != question.answer.to_s
        lose_life
        puts "#{current_player.name}: Seriously? No!"
        if current_player.life == 0
          # the other player win the game
          swap_players
          print_winner(current_player)
          return print_game_over
        end
      else
        puts "#{current_player.name}: YES! You are correct."
      end
      print_life
      print_new_turn
      swap_players
    end
  end

  def game_over?
    @players.any? { |player| player.life < 1 }
  end

  def lose_life
    current_player.lose_life
  end

  def swap_players
    @current_player = (@current_player + 1) % @players.length
  end

  def print_life
    player1 = @players[0]
    player2 = @players[1]
    puts "#{player1.name}: #{player1.life}/3 vs #{player2.name}: #{player2.life}/3"
  end

  def print_winner(winner)
    puts "#{winner.name} wins with a score of #{winner.life}/3"
  end

  def print_new_turn
    puts '----- NEW TURN -----'
  end

  def print_game_over
    puts '----- GAME OVER -----'
    puts 'Good bye!'
  end


end