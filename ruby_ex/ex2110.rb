# encoding:utf-8
require 'rubygems' #RubyGemsでインストールしたときには記述
require 'dbi' #DBIを使う

#dbhを作成し、データベース'fruits01.db'に接続する
dbh = DBI.connect('DBI:SQLite3:fruits01.db')

#テーブルに登録されたデータを削除する
#delete文の実行
#sthにexcuteメソッドが返すステートメントハンドルを保持
sth = dbh.execute("delete from products")
puts "all records are deleted"

#実行結果を解放する
sth.finish

#データベースとの接続を終了する
dbh.disconnect