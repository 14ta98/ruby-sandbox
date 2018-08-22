# -*- coding: utf-8 -*-
# Studentクラスをつくる
class Student
    # Studentクラスのインスタンスを初期化する
    def initialize(name,age)
        @name = name
        @age = age
    end

    # Studentクラスのインスタンスの文字列を返す
    def to_s
        "#@name, #@age"
    end
end

# Studentクラスのインスタンスを作成する