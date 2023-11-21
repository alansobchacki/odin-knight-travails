class Board
  attr_accessor :grid

  def initialize(knight)
    @knight = knight
    @grid = []
    8.times do |row|
      8.times do |column|
        @grid.push([row, column, '[ ]'])
      end
    end
  end

  def display_board
    update_board

    8.times do |row|
      8.times do |column|
        print column != 7 ? "#{@grid[row * 8 + column][2]} " : "#{@grid[row * 8 + column][2]}\n"
      end
    end
  end

  def update_board
    @grid.each_with_index do |_, index|
      @grid[index][2] = '[ ]' if @grid[index][2] == '[♞]'
    end

    @grid.each_with_index do |_, index|
      @grid[index][2] = '[♞]' if @grid[index][0..1] == (@knight.finish)
    end
  end
end