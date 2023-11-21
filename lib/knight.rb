class Knight
  attr_reader :moves, :start, :finish, :current_location

  def initialize(start, finish)
    @moves = 0
    @start = start
    @finish = finish
    @current_location = @start
  end

  def travails
    queue = [@start]
    @visited = Set.new([@start])

    until queue.empty?
      queue_size = queue.length

      queue_size.times do
        current_square = queue.shift
  
        return moves if current_square == @finish
  
        get_valid_moves(current_square).each do |next_square|
          unless @visited.include?(next_square)
            @visited.add(next_square)
            queue.push(next_square)
          end
        end
      end
  
      @moves += 1
    end
  end

  def path_taken
    moves = @visited.to_a.sort.uniq
    threshold = (@finish[0] < @start[0] || @finish[1] < @start[1]) ? @start : @finish

    path = moves.select { |sub_array| sub_array[0] <= threshold[0] && sub_array[1] <= threshold[1] }
    p path
  end

  def get_valid_moves(square)
    x, y = square
    valid_moves = [
      [x + 1, y + 2], [x - 2, y - 1], [x - 1, y + 2], [x + 2, y - 1],
      [x + 1, y - 2], [x - 2, y + 1], [x - 1, y - 2], [x + 2, y + 1]
    ]

    valid_moves.select { |new_square| valid_square?(new_square) }
  end

  def valid_square?(square)
    square.all? { |coord| coord.between?(0, 7) }
  end
end