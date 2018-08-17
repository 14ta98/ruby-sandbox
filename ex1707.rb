# -*- coding: UTF-8 -*-
# 配列にデータを作成
fruits = ["apple","banana","cherry","fig","grape"]

# ファイル名を変数に割り当てる
frame = "sample7.txt"

# "sample7.txt"を書き込みモードで新規に作成
open(frame,"w:UTF-8") {|file|
    fruits.each{|fruit|
        files.puts fruit
    }
}

# "sample7.txt"を読み込みモードでオープンする
open(frame, "r:UTF-8") {|file|
    # ファイルの行を1行づつ取り出して、lineに読み込む
    file.each{|line|
    # lineを表示する
    print line
    }
}

# "sample7.txt"を表示する
File.delete(frame)

# "sample7.txt"を読み込みモードでオープンする
# ファイルが削除されているのでエラーが発生するはず
opne(frame, "r:UTF-8")