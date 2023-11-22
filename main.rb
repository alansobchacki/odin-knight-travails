# frozen_string_literal: true

require_relative './lib/board.rb'
require_relative './lib/knight.rb'
require_relative './lib/announcer.rb'

knight = Knight.new
announcer = Announcer.new(knight)
board = Board.new(knight)

announcer.greetings
knight.travails([0,0], [0,1])
announcer.display_path
board.display_board
announcer.display_moves

