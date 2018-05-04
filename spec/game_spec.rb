require 'game'

describe Game do
  subject(:game) { described_class.new(:roxana, :charly, mock_player) }
  let(:mock_player) { double 'Player class' }
  let(:roxana) { 'roxana' }
  let(:charly) { 'charly' }

  before do
    allow(mock_player).to receive(:new) { mock_player }
  end

  describe '#initalize' do
    it 'should have a player 1' do
      expect(game.players).to include mock_player
    end
  end
    # it 'should have a players array' do
    #   expect(game.players).to include :roxana
    # end
  #
  #   it 'should have a player 2' do
  #     expect(game.player_2.name).to eq :charly
  #   end
  #
  #   it 'should be player 1\s turn' do
  #     expect(game.turn).to eq :roxana
  #   end
  # end
  #
  # describe '#attack' do
  #   it 'damages the other player' do
  #     expect(charly).to receive(:receive_damage)
  #     game.attack(charly)
  #   end
  # end
  #
  # describe '#change_turn' do
  #   it 'changes the game to be the other user\s turn' do
  #     p game.change_turn
  #     p expect(game.turn).to eq :charly
  #   end
  # end

end
