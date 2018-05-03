require 'game'

describe Game do
  subject(:game) { described_class.new(:roxana) }
  let(:roxana) { Player.new(:name_roxana) }
  let(:zoe) { double :player }
  let(:charly) { double :player }

  describe '#initalize' do
    it 'should have a player 1' do
      expect(game.player_1).to eq :roxana
    end
  end

  describe '#attack' do
    it 'damages the other player' do
      expect(charly).to receive(:receive_damage)
      game.attack(charly)
    end
  end

end
