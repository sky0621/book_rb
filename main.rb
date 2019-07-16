
if ARGV.count < 1
  msg = <<-EOB
book

キーバリュー形式で文字列情報を管理するコマンドです。
以下のサブコマンドが利用可能です。

list   ... 保存済みの内容を一覧表示します。
save   ... keyとvalueを渡して保存します。
get    ... keyを渡してvalueを表示します。
remove ... keyを渡してvalueを削除します。
help   ... ヘルプ情報（当内容と同じ）を表示します。
  EOB
  puts msg
  return
end

subCommand = ARGV[0]
pp subCommand

if subCommand == "save"

  return
end
