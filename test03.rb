# Stringという型（クラス）の値をnewで作成し、変数whoへ代入
who = String.new("jobs")

# whoにはString型の値が入っている
p who

class User
    def name
        @name
    end

    def name=(name)
        @name = name
    end
end

# Userという型（クラス）の値をnewで作成し変数userへ
user = User.new

# userにはuser型の値が入っている
p user

user.name = "user"
p user.name

class Hello
    def initialize(username)
        @username = username
    end
    def hello
        puts "hello, " + @username.to_s
    end
end

h = Hello.new("Kevin")
h.hello