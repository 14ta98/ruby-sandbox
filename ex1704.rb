# -#- coding: utf-8 -*-
# 配列にデータを作成

fruits = ["apple","banana","cherry","fig","grape"]

# "sample4.txt"を書き込みモードで新規に作成
file = File.open("sample4.txt","w:UTF-8")
fruits.each{|fruit|
    file.puts ßfruit  
}