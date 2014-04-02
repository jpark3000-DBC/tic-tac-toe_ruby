require_relative '../spec/spec_helper.rb'
include Constants

describe 'Ai' do
  let(:player) { X }
  
  let(:ai) { Ai.new(player) }



  describe '#horizontal_win?' do
    let(:board_1) { [[BLANK, BLANK, BLANK], [BLANK, X, X], [BLANK, BLANK, BLANK]] }
    let(:board_2) { [[X, X, BLANK], [BLANK, BLANK, BLANK], [BLANK, BLANK, BLANK]] }
    let(:board_3) { [[X, BLANK, BLANK], [BLANK, BLANK, X], [X, BLANK, X]] }

    let(:board_4) { [[BLANK, BLANK, BLANK], [BLANK, BLANK, X], [BLANK, BLANK, BLANK]] }
    let(:board_5) { [[BLANK, BLANK, BLANK], [BLANK, BLANK, X], [X, BLANK, BLANK]] }

    it 'returns a score of 9' do
      expect(ai.horizontal_win?(board_1)).to eq(9)
      expect(ai.horizontal_win?(board_2)).to eq(9)
      expect(ai.horizontal_win?(board_3)).to eq(9)
    end

    it 'returns a score of 0' do
      expect(ai.horizontal_win?(board_4)).to eq(0)
      expect(ai.horizontal_win?(board_5)).to eq(0)
    end
  end

  describe '#vertical_win?' do
    let(:board_1) { [[X, BLANK, BLANK], [X, BLANK, BLANK], [BLANK, BLANK, BLANK]] }
    let(:board_2) { [[X, BLANK, BLANK], [BLANK, X, BLANK], [BLANK, X, BLANK]] }
    let(:board_3) { [[X, BLANK, X], [BLANK, BLANK, BLANK], [BLANK, X, X]] }

    let(:board_4) { [[X, BLANK, X], [BLANK, X, BLANK], [BLANK, BLANK, BLANK]] }



    it 'returns a score of 9' do 
      expect(ai.vertical_win?(board_1)).to eq(9)
      expect(ai.vertical_win?(board_2)).to eq(9)
      expect(ai.vertical_win?(board_3)).to eq(9)
    end

    it 'returnts a score of 0' do
      expect(ai.vertical_win?(board_4)).to eq(0)
    end
  end

  describe '#down_diagonal_win' do
    let(:board_1) { [[X, BLANK, BLANK], [BLANK, X, BLANK], [BLANK, BLANK, BLANK]] }
    let(:board_2) { [[BLANK, BLANK, BLANK], [BLANK, X, BLANK], [BLANK, BLANK, X]] }

    let(:board_3) { [[BLANK, BLANK, BLANK], [BLANK, X, BLANK], [BLANK, BLANK, BLANK]] }

    it 'returns a score of 9' do
      expect(ai.down_diagonal_win?(board_1)).to eq(9)
      expect(ai.down_diagonal_win?(board_2)).to eq(9)
    end

    it 'returnts a score of 0' do
      expect(ai.down_diagonal_win?(board_3)).to eq(0)
    end
  end

  describe '#up_diagonal_win' do
    let(:board_1) { [[BLANK, BLANK, X], [BLANK, X, BLANK], [BLANK, BLANK, BLANK]] }
    let(:board_2) { [[BLANK, X, BLANK], [BLANK, X, BLANK], [X, BLANK, BLANK]] }

    let(:board_3) { [[BLANK, X, BLANK], [BLANK, BLANK, BLANK], [BLANK, BLANK, BLANK]] }

    it 'returns a score of 9' do
      expect(ai.up_diagonal_win?(board_1)).to eq(9)
      expect(ai.up_diagonal_win?(board_2)).to eq(9)
    end

    it 'returns a score of 0' do
      expect(ai.up_diagonal_win?(board_3)).to eq(0)
    end
  end
end