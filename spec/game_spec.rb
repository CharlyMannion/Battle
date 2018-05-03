require 'game'

describe Game do
  subject(:game) { described_class.new(:roxana, :charly) }
  let(:roxana) { Player.new(:name_roxana) }
  let(:charly) { Player.new(:name_charly) }
  let(:zoe) { double :player }
  let(:charly) { double :player }

  describe '#initalize' do
    it 'should have a player 1' do
      expect(game.player_1.name).to eq :roxana
      game.player_1.name
    end

    it 'should have a player 2' do
      expect(game.player_2.name).to eq :charly
    end
  end

  describe '#attack' do
    it 'damages the other player' do
      expect(charly).to receive(:receive_damage)
      game.attack(charly)
    end
  end

end
