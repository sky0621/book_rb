require './command'

class Remove < Command
  def initialize(storeInfo)
    @storeInfo = storeInfo
  end

  def exec(*args)
    if args.size != 1
      puts "not valid"
      return
    end

    json_data = open(@storeInfo.getName, 'r') do |io|
      JSON.load(io)
    end

    json_data.delete(args[0])

    open(@storeInfo.getName, 'w') do |io|
      JSON.dump(json_data, io)
    end
  end
end
