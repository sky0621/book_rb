require './command'

class Get < Command
  def initialize(persistence)
    @persistence = persistence
  end

  def exec(*args)
    if args.size != 1
      puts "not valid"
      return
    end
    @persistence.get(args[0])
  end
end
