# -*- coding: utf-8 -*-
require 'date'

class BookInfo
    # BookInfoクラスのインスタンスを初期化する
    def initialize(title,author,page,publish_date)
        @title = title
        @author = author
        @page = page
        @publish_date = publish_date
    end

    # 最初に検討する属性に対するアクセサを提供する
    attr_accessor :title, :author, :page, :publish_date

    # BookInfoクラスのインスタンスをCSV形式へ変換する
    def to_csv(key)
        "#{key},#{@title},#{@author},#{@page},#{@publish_date}\n"
    end

    # BookInfoクラスのインスタンスの文字列表現を返す
    def to_s
        "#{@title},#{@title},#{@author},#{@page},#{@publish_date}"
    end

    # 蔵書データ書式を付けて出力する操作を追加する
    # 項目の区切り文字を引数に指定することができる
    # 引数を省略した場合は改行を区切り文字にする

    def toFormattedString(seq= "\n")
        "書籍名: #{@title}#{seq}著者名: #{@author}#{seq}ページ数: #{@page}ページ#{seq}発刊日: #{@publish_date}#{seq}"
    end
end

# BookInfoManagerクラスを定義する
class BookInfoManager
    def initialize(filename)
        # 初期化でcsvファイルを指定する
        @csv_fname = filename
        # 蔵書データのハッシュ
        @book_infos ={}
    end

# 蔵書データをセットアップする
def setUp
    # CSVファイルを読み込みモードでオープンする
    open(@csv_fname,"r:UTF8") {|file|
        #ファイルの行を一行づつ取り出して、lineに読み込む
        file.each {|line|
        # lineからchompで改行を除き、splitでカンマ区切りに分類し、
        # 左辺のそれぞれの項目へ多重代入する
        key, title, author, page, pdate = line.chomp.split(',')
        # 蔵書データを1件分のインスタンスを作成してハッシュに登録する
        # strptimeは、文字列からDateクラスのインスタンスを作成するメソッド
        @book_infos[key] =
            BookInfo.new(title,author,page.to_i,Date.strptime(pdate))
            } # 1行づつの処理の終わり　　　　
        }# ファイルを閉じている
    end
    # 蔵書データを登録する
    def addBookInfo
        # 蔵書データ1件分のインスタンスを作成する
        book_info = BookInfo.new("","", 0, Date.new)
        # 入力するデータを項目ごとに入力する
        print "\n"
        print "キー: "
        key = gets.chomp
        print "書籍名：　"
        book_info.title = gets.chomp
        print "著者名：　"
        book_info.author = gets.chomp
        print "ページ数： "
        book_info.page = gets.chop.to_i
        print "発刊日： "
        day = gets.chomp.to_i
        book_info.publish_date = Date.new(year,month,day)

        # 作成した蔵書データ1件分をハッシュに登録する
        @book_infos[key] = book_info
    end

    # 蔵書データを全件ファイルへ書きこんで保存する
    def saveAllBookInfos
        # CSVファイルを書き込みモードでオープンする
        open(@csv_fname, "w:UTF-8") {|file|
        @book_infos.each { |key, info|
            file.print(info.to_csv(key))
        } # 1行ずつの処理の終わり
        puts "\nファイルへ保存しました"
    }# ファイルを閉じている
    end

    # 処理の選択と選択後の処理を繰り返す
    def run
        while true
            # 機能選択画面を表示する
            print "
                1.蔵書データの登録
                2.蔵書データの表示
                8.蔵書データをファイルへ保存
                9.終了
                番号をえらんでください(1,2,8,9):
            "
            #　文字の入力を持つ
            num = gets.chomp
            case
            when '1' == num
                # 蔵書データの登録
                addBookInfo
            when '2' == num
                # 蔵書データの表示
                listAllBookInfos
            when '8' == num
                # 蔵書データをファイルへ保存
                saveAllBookInfos
            when '9' == num
                # アプリケーションの終了
                break;
            else
                #　処理選択待ち画面に戻る
            end
        end
    end
end

# ここからアプリケーションを動かす本体

# アプリケーションのインスタンスをつくる
# 確認データのcsvファイルを指定している
book_info_manager = BookInfoManager.new("book_info.csv")

# BookInfoManagerの蔵書データをセットアップする
book_info_manager.setUp

# BookInfoManagerの処理の選択と選択後の処理を渡す
book_info_manager.run
