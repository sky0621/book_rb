require './command'
require './store'

class Save < Command
  include Store

  def initialize(storeInfo)
    @storeInfo = storeInfo
  end

  def exec(*args)
    if args.size != 2
      puts "not valid"
      return
    end

    json_data = load
    json_data[args[0]] = args[1]
    dump(json_data)
  end
end
