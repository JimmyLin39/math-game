# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require './player'
require './game'

# Test code
game = Game.new
game.start
