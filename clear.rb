require 'json'
require './command'
require './store'

class Clear < Command
  include Store
  
  def initialize(storeInfo)
    @storeInfo = storeInfo
  end

  def exec(*args)
    dump(Hash.new)
  end
end
