require 'player'

describe Player do
  subject(:zoe) { described_class.new('Zoe') }
  subject(:charly) { described_class.new('Charly') }

  describe '#name' do
    it 'should return the player\'s name' do
      expect(zoe.name).to eq 'Zoe'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points of the player' do
      expect(zoe.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player\s hit points' do
      expect { charly.receive_damage }.to change { charly.hit_points }.by(-10)
    end
  end

end
