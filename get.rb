require './command'
require './store'

class Get < Command
  include Store

  def initialize(storeInfo)
    @storeInfo = storeInfo
  end

  def exec(*args)
    if args.size != 1
      puts "not valid"
      return
    end

    puts load[args[0]]
  end
end
