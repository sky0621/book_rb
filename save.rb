require './command'

class Save < Command
  def initialize(persistence)
    @persistence = persistence
  end

  def exec(*args)
    if args.size != 2
      puts "not valid"
      return
    end
    @persistence.save(args[0], args[1])
  end
end
