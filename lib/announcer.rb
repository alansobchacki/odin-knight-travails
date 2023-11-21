class Announcer
  def initialize(knight)
    @knight = knight
  end

  def greetings
    print 'Loading Knights Travails'
    3.times do
      sleep 1.0
      print '.'
    end
    puts "\n\nKnights Travails Successfully loaded."
    sleep 2.0
    puts "\nThe knight will move from #{@knight.start} to #{@knight.finish}!"
  end

  def display_moves
    puts "The knight made it in #{@knight.moves} moves!"
  end
end