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
    puts "\nKnights Travails Successfully loaded."
    sleep 2.0
  end

  def display_path
    puts "\nThe knight will move from #{@knight.path.first} to #{@knight.path.last}!"
    sleep 3.0
    @knight.path.each_with_index do |_, index|
      sleep 1.0
      print "#{@knight.path[index]} "
    end

    puts "\n\n"
  end

  def display_moves
    puts "\n"
    puts "The knight made it in #{@knight.path.length - 1} moves!"
  end
end