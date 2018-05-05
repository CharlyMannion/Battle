require './lib/player.rb'

class Game

  attr_reader :player_1, :player_2, :turn, :players

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn_counter = 0
  end

  def attack(player)
    @turn_counter += 1
    player.receive_damage
  end

  def chosen_player
    @turn_counter % 2 == 0 ? @player_1 : @player_2
  end

  def other_player
    if chosen_player = @player_1 then other_player = @player_2
    elsif chosen_player = @player_2 then other_player = @player_1
    end
  end

end
