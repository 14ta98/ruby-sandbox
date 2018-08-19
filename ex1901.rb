# -*- coding: utf-8 -*-
require 'pstore'

# 文字列を作成
juice = "orange juice"

# 配列にデータを作成
fruits = ["apple","banana","cherryß","fig","grape"]

# PStoreデータベースを作成する
db = PStore.new('fruitsdb')

# PStoreにデータを書きこむ
db.transaction do
    # 文字列をPstoreに保存する
    db["drink"] = juice
    # 配列をPStoreに保存する
    db["fruits"] = fruits
end

# PStoreからデータを読み込んで表示する
db.transaction(true) do
    puts "drink: #{db["drink"]}"
    puts "fruits: #{db["fruits"].join(", ")}"
end