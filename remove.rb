require './command'
require './store'

class Remove < Command
  include Store
  
  def initialize(storeInfo)
    @storeInfo = storeInfo
  end

  def exec(*args)
    if args.size != 1
      puts "not valid"
      return
    end

    json_data = load
    json_data.delete(args[0])
    dump(json_data)
  end
end
