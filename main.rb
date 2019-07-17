
def usage()
  msg = <<-EOB

[usage]
キーバリュー形式で文字列情報を管理するコマンドです。
以下のサブコマンドが利用可能です。

list   ... 保存済みの内容を一覧表示します。
save   ... keyとvalueを渡して保存します。
get    ... keyを渡してvalueを表示します。
remove ... keyを渡してvalueを削除します。
help   ... ヘルプ情報（当内容と同じ）を表示します。

  EOB
  puts msg
end

# -------------------------------------------------------------------
# ここからメイン処理
# -------------------------------------------------------------------

cmd_store = Hash.new

if ARGV.count < 1
  pp "Start!"
  loop do
    # 改行コードが含まれるので削る。
    cmd = gets.chomp!

    # アプリ終了判定
    if cmd === "end"
      puts "End!"
      exit
    end

    # ヘルプ
    if cmd === "help"
      usage()
    end

    cmds = cmd.split(" ")
    if cmds.length < 1
      usage
      next
    end

    # 保存
    if cmds[0] === "save"
      if cmds.length != 3
        usage()
        next
      end
      cmd_store[cmds[1]] = cmds[2]
      pp cmd_store
      next
    end
  end
end

subCommand = ARGV[0]

if subCommand == "help"
  usage
  return
end
