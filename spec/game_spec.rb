require 'game'

describe Game do
  subject(:game) { described_class.new(:roxana, :charly) }
  # let(:roxana) { Player.new(:name_roxana) }
  # let(:charly) { Player.new(:name_charly) }
  let(:roxana) { double :player }
  let(:charly) { double :player }

  describe '#initalize' do
    it 'should have a player 1' do
      p expect(game.player_1.name).to eq :roxana
      p game.player_1.name
    end

    it 'should have a players array' do
      expect(game.players).to include :roxana
    end

    it 'should have a player 2' do
      p expect(game.player_2.name).to eq :charly
    end

    it 'should be player 1\s turn' do
      p expect(game.turn).to eq :roxana
    end
  end

  describe '#attack' do
    it 'damages the other player' do
      p expect(charly).to receive(:receive_damage)
      p game.attack(charly)
    end
  end

  describe '#change_turn' do
    it 'changes the game to be the other user\s turn' do
      p game.change_turn
      p expect(game.turn).to eq :charly
    end
  end

end
