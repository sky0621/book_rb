# book_rb

## Env

<pre>
$ ruby -v
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-linux-gnu]
</pre>

## Recipe

<pre>
$ book

  *show usage*
</pre>

<pre>
$ book help

  *show help
</pre>

<pre>
$ book list

key          value
memo         This is a memo.
ToDo         get up at 6
Today's Menu xxxx
</pre>

<pre>
$ book list -t csv

"key","value"
"memo","This is a memo."
"ToDo","get up at 6"
"Today's Menu","xxxx"
</pre>

<pre>
$ book list -o output.txt
$
$ cat output.txt

key          value
memo         This is a memo.
ToDo         get up at 6
Today's Menu xxxx
</pre>

<pre>
$ book save key01 val01
$
$ book list

key   value
key01 val01
</pre>

<pre>
$ book get key01

val01
</pre>

<pre>
$ book remove key01
$
$ book list

</pre>
