class Ai
  attr_reader :player
  def initialize(player, board)
    @player = player
    @board = board
  end

  def horizontal_win?
    arr = []
    @board.each_with_index do |v, i|
      arr << i if player?(v)
    end
    arr
  end

  private
  def player?(mark)
    mark == @player
  end

end

