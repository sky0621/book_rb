# book_rb

## Env

<pre>
$ ruby -v
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux-gnu]
</pre>

## Recipe

### アプリ起動
<pre>
$ book

# 
</pre>

### アプリ終了
<pre>
# end

$
</pre>

### ヘルプ
<pre>
# help

  *show help
</pre>

### 保存
<pre>
# save key01 val01

</pre>

### 取得
<pre>
# get key01

val01
</pre>

### 削除
<pre>
# remove key01
#
# get key01

</pre>

### 一覧表示
<pre>
# list

key          value
memo         This is a memo.
ToDo         get up at 6
Today's Menu xxxx
</pre>

### CSV形式で一覧表示
<pre>
# list -t csv

"key","value"
"memo","This is a memo."
"ToDo","get up at 6"
"Today's Menu","xxxx"
</pre>

### 出力先指定で一覧表示
<pre>
# list -o output.txt
#
# end
$ cat output.txt

key          value
memo         This is a memo.
ToDo         get up at 6
Today's Menu xxxx
</pre>
