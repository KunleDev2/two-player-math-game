require_relative 'player'
require_relative 'math_game'

player_1_name, player_2_name = GameInterface.get_player_names

game = MathGame.new(player_1_name, player_2_name)
game.start_game