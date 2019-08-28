require './command'

class End < Command
  def exec(*args)
    puts "End!"
    exit
  end
end