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
    puts "#{current_player.name}: Whart does 5 plus 3 equal?"
    if gets.chomp != '8'
      lose_life
      puts "#{current_player.name}: Seriously? No!"
      print_life
      print_new_turn
    else
      puts "#{current_player.name}: YES! You are correct."
      print_life
      print_new_turn
    end

  end

  def lose_life
    current_player.lose_life
  end

  def print_life
    player1 = @players[0]
    player2 = @players[1]
    puts "#{player1.name}: #{player1.life}/3 vs #{player2.name}: #{player2.life}/3"
  end

  def print_new_turn
    puts '----- NEW TURN -----'
  end

  def print_game_over
    puts '----- GAME OVER -----'
    puts 'Good bye!'
  end


end