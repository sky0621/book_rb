require 'json'
require './command'

class Clear < Command
  def initialize(storeInfo)
    @storeInfo = storeInfo
  end

  def exec(*args)
    open(@storeInfo.getName, 'w') do |io|
      JSON.dump(Hash.new, io)
    end
  end
end
