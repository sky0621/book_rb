require './command'
require './store'

class List < Command
  include Store
  
  def initialize(storeInfo)
    @storeInfo = storeInfo
  end

  def exec(*args)
    puts '"key","value"'
    load.each {|k, v| puts %("#{k}","#{v}")}
  end
end