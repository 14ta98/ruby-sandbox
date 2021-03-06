# -*- coding: utf-8 -*-
require 'webrick' # WEBrickを使う時に記述する

# サーバーの設定を書いたハッシュを用意する
# ポートは通常使う80番ではなく、使ってなさそうなポート番号にしておく
# 8099は空いてそうなポート番号の例
# DocumentRootは文書のある場所
# ここでは現在のディレクトリを表す「.」を指定している
# ここでは現在のディレクトリを表す「.」を指定している
config = {
    :Port => 8099,
    :DocumentRoot => '.',
}

# WEBrickのHTTP Serverクラスのサーバーインスタンスを作成する
server = WEBrick::HTTPServer.new(config)

# Ctrl-Cで割り込みがあった場合にサーバーを停止する処理を登録しておく
trap(:INT) do
    server.shutdown
end

# 上記記述の処理をこなすサーバーを開始する
server.start