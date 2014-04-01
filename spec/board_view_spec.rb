require_relative '../spec/spec_helper.rb'

describe 'BoardView' do
  let(:init_array) { Array.new(9, "X") }
  let(:board) { BoardView.new }
  let(:board_string) { "X|X|X\nX|X|X\nX|X|X\n" } 

  describe '#display' do

    it 'outputs a tic-tac-toe board' do
      expect(board.display(init_array)).to eq(board_string)
    end

  end


end