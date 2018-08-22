# -*- coding: utf-8 -*-
require 'date'
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
    end
# Musicクラスのインスタンスを作成する
music = Music.new "戦場のメリー・クリスマス"
puts "曲名：" + music.title


