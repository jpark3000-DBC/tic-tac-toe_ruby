require_relative '../spec/spec_helper.rb'

describe 'Ai' do
  let(:player) { "X" }
  let(:board) { ["X", "X", nil, nil, nil, nil, nil, nil, nil] }
  let(:ai) { Ai.new(player, board) }

  describe '#horizontal_win?' do
    it 'returns an array' do
      expect(ai.horizontal_win?).to equal(Array)
    end
  end

  describe '#win' do
    it 'returns a score of 9' do
      skip
      expect(ai.win).to eq(9)
    end
  end
end