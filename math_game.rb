class MathGame
  attr_accessor :current_player, :player_1, :player_2

  def initialize(player1_name, player2_name)
    @player_1 = Player.new(player_1_name)
    @player_2 = Player.new(player_2_name)
    @current_player = @player_1
  end

  def generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    { question: "What is #{num1} + #{num2}?", answer: num1 + num2 }
  end

  def switch_turn
    @current_player = (@current_player == @player_1) ? @player_2 : @player_1
  end

  def game_over
    if @player_1.lives == 0
      puts "#{player_2.name} wins with #{player_2.lives} lives remaining!"
    elsif @player2.lives == 0
      puts "#{player_1.name} wins with #{player_1.lives} lives remaining!"
    end
  end

  def start_game
    until @player_1.lives == 0 || @player_2.lives == 0
      question = generate_question
      puts "#{current_player.name}, #{question[:question]}"
      answer = gets.chomp.to_i

      if answer == question[:answer]
        puts "Correct!\n\n"
      else
        current_player.reduce_life
        puts "Incorrect! #{current_player.name} loses a life.\n\n"
      end

      puts "#{player_1.name}: #{player_1.lives} lives | #{player_2.name}: #{player_2.lives} lives\n\n"

      switch_turn
    end

    game_over
  end
end