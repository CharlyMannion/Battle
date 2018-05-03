require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:zoe) { double :player }
  let(:charly) { double :player }

  describe '#attack' do
    it 'damages the other player' do
      expect(charly).to receive(:receive_damage)
      game.attack(charly)
    end
  end

end
