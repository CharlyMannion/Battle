class Game

  attr_reader :player_1

  def initialize(player_1 = Player.new)
    @player_1 = player_1
  end

  def attack(player)
    player.receive_damage
  end

end
