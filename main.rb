# main.rbと同階層にあるファイルを読む時は「./」で始める。
require './store_info'
require './end'
require './help'
require './clear'
require './save'
require './get'
require './remove'

puts "Start!"

storeInfo = StoreInfo.new('store.json')
commands = {
    "end" => End.new,
    "help" => Help.new,
    "clear" => Clear.new(storeInfo),
    "save" => Save.new(storeInfo),
    "get" => Get.new(storeInfo),
    "remove" => Remove.new(storeInfo),
}

if !File.exists?(storeInfo.getName)
  commands["clear"].exec
end

loop do
  # 改行コードが含まれるので削る。
  cmd, *args = gets.chomp.split /\s+/

  commands[cmd].exec(*args)

  # case cmd
  #
  # # 一覧
  # when "list"
  #   puts '"key","value"'
  #   cmd_store.each {|k, v| puts %("#{k}","#{v}")}
  #
  # end

end
