require './command'

class Get < Command
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

    puts json_data[args[0]]
  end
end
