# main.rbと同階層にあるファイルを読む時は「./」で始める。
require './persistence'
require './save'
require './get'

puts "Start!"

p = Persistence.new('store2.json')
commands = {
    "save" => Save.new(p),
    "get"  => Get.new(p)
}

loop do
  # 改行コードが含まれるので削る。
  cmd, *args = gets.chomp.split /\s+/

  commands[cmd].exec(*args)

  # case cmd
  #
  # # アプリ終了判定
  # when "end"
  #   puts "End!"
  #   exit
  #
  # # 保存
  # when "save"
  #   if args.size == 2
  #     cmd_store[args[0]] = args[1]
  #   else
  #     usage
  #   end
  #
  # # 取得
  # when "get"
  #   if args.size == 1
  #     puts cmd_store[args[0]]
  #   else
  #     usage
  #   end
  #
  # # 削除
  # when "remove"
  #   if args.size == 1
  #     cmd_store.delete(args[0])
  #   else
  #     usage
  #   end
  #
  # # 一覧
  # when "list"
  #   puts '"key","value"'
  #   cmd_store.each {|k, v| puts %("#{k}","#{v}")}
  #
  # end

end
