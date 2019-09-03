require './command'

class Save < Command
  def initialize(storeInfo)
    @storeInfo = storeInfo
  end

  def exec(*args)
    if args.size != 2
      puts "not valid"
      return
    end

    json_data = open(@storeInfo.getName, 'r') do |io|
      JSON.load(io)
    end

    json_data[args[0]] = args[1]

    open(@storeInfo.getName, 'w') do |io|
      JSON.dump(json_data, io)
    end
  end
end
