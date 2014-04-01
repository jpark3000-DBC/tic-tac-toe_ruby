class BoardView
  attr_reader :md_a
  def initialize
    @md_a = []
  end

  def display(array)
    to_md_a(array)
    rows = []
    md_a.each { |row| rows << row.join("|") }
    rows.join("\n") + "\n"
  end

  private
  def to_md_a(array)
    array.each_slice(3) { |i| md_a << i }
    md_a
  end

end

# board = BoardView.new
# puts board.display(Array.new(9, "X"))

