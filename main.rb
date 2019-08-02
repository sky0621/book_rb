
def usage()
  puts <<~EOB

    [usage]
    キーバリュー形式で文字列情報を管理するコマンドです。
    以下のサブコマンドが利用可能です。

    list   ... 保存済みの内容を一覧表示します。
    save   ... keyとvalueを渡して保存します。
    get    ... keyを渡してvalueを表示します。
    remove ... keyを渡してvalueを削除します。
    help   ... ヘルプ情報（当内容と同じ）を表示します。

  EOB
end

# -------------------------------------------------------------------
# ここからメイン処理
# -------------------------------------------------------------------

cmd_store = Hash.new

puts "Start!"

loop do
  # 改行コードが含まれるので削る。
  cmd, *args = gets.chomp.split /\s+/

  case cmd

  # アプリ終了判定
  when "end"
    puts "End!"
    exit

  # ヘルプ
  when "help"
    usage
    next

  # 保存
  when "save"
    if args.size == 2
      cmd_store[args[0]] = args[1]
    else
      usage
    end

  # 取得
  when "get"
    if args.size == 1
      puts cmd_store[args[0]]
    else
      usage
    end

  # 削除
  when "remove"
    if args.size == 1
      cmd_store.delete(args[0])
    else
      usage
    end

  # 一覧
  when "list"
    puts '"key","value"'
    cmd_store.each {|k, v| puts %("#{k}","#{v}")}

  end

end
