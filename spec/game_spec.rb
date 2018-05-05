require 'game'

describe Game do
  subject(:game) { described_class.new(muz, rox) }
  let(:muz) { double :player, name: "muzz" }
  let(:rox) { double :player, name: "roxana", receive_damage: nil }
  # nil used because we don't care what the return value of received damage is


  describe '#initalize' do
    it 'should pass arguments to instance of Player' do
      expect(game.player_1).to eq muz
    end
    it 'should pass a second argument' do
      expect(game.player_2).to eq rox
    end
  end

  describe '#attack' do
    # before do
    #   allow(rox).to receive(:receive_damage)
    # end
    # the above is replaced by adding method to double
    it 'should call the method receive damage' do
      game.attack(rox)
      expect(rox).to have_received(:receive_damage)
    end
  end

  describe '#chosen_player' do
    it 'should return the player who\'s turn it is to attack' do
      expect(game.chosen_player).to eq muz
    end
  end

  describe '#other_player' do
    it 'should return the other player (not their turn)' do
      game.attack(rox)
      expect(game.other_player).to eq rox
    end
  end


































  # subject(:game) { described_class.new(:roxana, :charly) }
  # let(:mock_player) { double 'player' }
  # let(:roxana) { 'roxana' }
  # let(:charly) { 'charly' }
  #
  # before do
  #   allow(mock_player).to receive(:new) { mock_player }
  # end
  #
  # describe '#initalize' do
  #   it 'should have a player 1' do
  #     expect(game.players).to include mock_player
  #   end
  # end
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
