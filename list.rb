require './command'

class List < Command
  def initialize(storeInfo)
    @storeInfo = storeInfo
  end

  def exec(*args)
    json_data = open(@storeInfo.getName, 'r') do |io|
      JSON.load(io)
    end

    puts '"key","value"'
    json_data.each {|k, v| puts %("#{k}","#{v}")}
  end
end