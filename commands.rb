# 同階層にあるファイルを読む時は「./」で始める。
require './store'
require './end'
require './help'
require './clear'
require './save'
require './get'
require './remove'
require './list'

class Commands
  def initialize(storeInfo)
    @commands = {
        end: End.new,
        help: Help.new,
        clear: Clear.new(storeInfo),
        save: Save.new(storeInfo),
        get: Get.new(storeInfo),
        remove: Remove.new(storeInfo),
        list: List.new(storeInfo),
    }
    # コマンド群の初期化時に実行するよう修正
    if !File.exists?(storeInfo.getName)
      @commands[:clear].exec
    end
  end

  def exec(cmd, *args)
    if @commands[cmd].nil?
      puts "no target"
      return
    end
    @commands[cmd].exec(*args)
  end
end
