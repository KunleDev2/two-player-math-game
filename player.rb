class Player
  attr_accessor :name, :leftlives

  def initialize(name)
    @name = name
    @leftlives = 3
  end

  def reduce_player_life
    @leftlives -= 1
  end
end