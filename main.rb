# 同階層にあるファイルを読む時は「./」で始める。
require './store_info'
require './commands'

puts "Start!"

commands = Commands.new(StoreInfo.new('store.json'))

loop do
  # 改行コードが含まれるので削る。
  cmd, *args = gets.chomp.split /\s+/
  commands.exec(cmd.to_sym, *args)
end
