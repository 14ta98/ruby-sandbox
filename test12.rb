# -*- coding: utf-8 -*-
# Musicクラスをつくる
    class Music
        # Musicクラスのインスタンスを初期化する
        def initialize(title)
            @title = title
        end
        # title属性のゲッターメソッド
        def title
            @title
        end
        def title=(value)
            @title = value
        end
    end
# Musicクラスのインスタンスを作成する
music = Music.new "戦場のメリー・クリスマス"
music.title = "ライディーン"
puts "曲名：" + music.title
