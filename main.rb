# frozen_string_literal: true

require_relative './lib/board.rb'
require_relative './lib/knight.rb'
require_relative './lib/announcer.rb'

knight = Knight.new([3,3], [0,0])
announcer = Announcer.new(knight)
board = Board.new(knight)

# announcer.greetings
# board.display_board
knight.travails
# announcer.display_moves
knight.path_taken