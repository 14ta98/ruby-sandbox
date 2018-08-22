# Studentクラスを定義する
class Student
    # Studentクラスのname,ageデータを初期化する
    def initialize(name,age)
        @name = name
        @age = age
    end
    def introduce
       puts "私は#{@name}です。#{@age}歳です。"
    end
end
# Studentクラスのインスタンスを作成し、変数化する。
yamada = Student.new('やまだたろう',21)
tanaka = Student.new('たなかゆうき',18)

# yamada,tanakaインスタンスを出力する。
print yamada.introduce
print tanaka.introduce


