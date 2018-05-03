class Player

  attr_reader :name, :hit_points

  DEFAULT_HIT_POINTS = 60
  DEFAULT_DAMAGE_POINTS = 10

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= DEFAULT_DAMAGE_POINTS
  end

end
