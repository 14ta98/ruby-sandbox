# Musicクラスを定義する
class Music
    # Musicクラスのデータを初期化する
    def initialize(title)
        # タイトルを定義する
        @title = title
    end
end
# インスタンスを作成し、「Let It Be」という文字列をmusic変数に格納する。
music = Music.new("Let It Be")
# musicクラスのタイトルを出力する
puts music.title