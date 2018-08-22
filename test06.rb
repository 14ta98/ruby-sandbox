class Hello
    # クラスの初期化メソッド
    def initialize

    end

    # クラスのインスタンスメソッド
    def talk
        puts "hello,World"
    end
end

# newメソッドによるclassの初期化
hello = Hello.new

# Helloクラスのtalkメソッドを実行
hello.talk