class Knight
  attr_accessor :path

  def initialize
    @knight_moves = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]
  end

  def travails(start, stop)
    visited = {}
    queue = [[stop, nil]]

    while queue.any?
      current_cell, next_cell = queue.shift
      next if visited.has_key?(current_cell)

      visited[current_cell] = next_cell

      return build_path(start, stop, visited) if current_cell == start

      possible_moves(current_cell).each do |next_move|
        queue << [next_move, current_cell] unless visited.has_key?(next_move)
      end
    end
  end

  def possible_moves(cell)
    @knight_moves.
      map { |x, y| [cell.first + x, cell.last + y] }.
      select(&method(:valid_move?))
  end

  def build_path(start, stop, visited)
    @path = [start]

    while next_cell = visited[@path.last]
      @path << next_cell
    end

    @path.last == stop ? @path : nil
  end

  def valid_move?(cell)
    cell.all? { |n| n >= 0 && n <= 7 }
  end
end