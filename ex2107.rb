# -*- coding: utf-8 -*-
require 'rubygems' # RubyGemsでインストールしたときには記述
require 'dbi' # DBIを使う

# dbhを作成し、データベース'fruits01.db'に接続する
# もしすでに存在するときは、そのデータベースファイルを開く
dbh = DBI.connect('DBI:SQLite3:fruits01.db')