class Student
    # Studentクラスのインスタンスを初期化する
    def initialize(name,age)
        @name = name
        @age = age
    end

    # Studentクラスのインスタンスの文字列表現を返す
    def to_s
        "#@name,#@age"
    end
end
# Studentクラスのインスタンスを作成する
yamada = Student.new('やまだたろう',45)
tanaka = Student.new('たなかゆうき',35)

# インスタンスの名前と年齢を表示する
puts yamada.to_s
puts tanaka.to_s