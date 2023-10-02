class GameInterface
  def self.get_player_names
    puts "Enter Player 1 name: "
    player_1_name = gets.chomp

    puts "Enter Player 2 name: "
    player_2_name = gets.chomp

    [player_1_name, player_2_name]
  end
end