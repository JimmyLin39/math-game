# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require './player'
require './game'
require './question'

# Test code
game = MathGame::Game.new
game.start

# q = Question.new
# puts q.first_num
# puts q.second_num
# puts q.answer
