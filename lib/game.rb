require './lib/player.rb'

class Game

  attr_reader :player_1, :player_2, :turn, :players

  def initialize(player_1, player_2, player_class_type=Player)
    @player_1 = player_class_type.new(player_1)
    @player_2 = player_class_type.new(player_2)
    @players = [@player_1, @player_2]
    @turn = player_1
  end

  def attack(player)
    player.receive_damage
  end

  def change_turn
    @turn = other_player
  end

  private

  def other_player
    @players.last
  end


end
