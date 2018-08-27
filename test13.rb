# -*- coding: utf-8 -*-
# Musicクラスをつくる
    class Music
        # Musicクラスのインスタンスを初期化する
        def initialize(title,composer)
            @title = title
            @composer = composer
        end
        # title属性、age属性のアクセサ
        attr_accessor :title, :composer
        # Musicクラスのインスタンスの文字列表現を返す
        def to_s
            "#@title, #@composer"
        end
    end
# Musicクラスのインスタンスを作成する
music = Music.new '戦場のメリークリスマス', '坂本龍一'
# アクセサを使ってtitileの値を変更する
music.title = "ライディーン"
puts "曲名：" + music.title + "\n作曲者：" + music.composer