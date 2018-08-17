# -*- coding: utf-8 -*-
# 配列にデータを作成
indians = ["One Little, Two Little, Three Little Indians¥n",
           "Four Little, Five Little, Six Little Indians¥n",
           "Seven Little, Eight Little, Nine Little Indians¥n",
           "Ten Little Indian Boys.¥n"]
           
# "sample5.txt"を書き込みモードで新規に作成
file = File.open("sample5.txt","w:UTF-8")
indians.each {|indian|
    file.print indian
}

# ファイルを閉じる
file.close

# "sample5.txt"を読み込みモードでオープンする
file = open("sample5.txt","r:UTF-8")

# ファイルからデータを全て読み込み、それを表示する
print file.read

# ファイルを閉じる
file.close
