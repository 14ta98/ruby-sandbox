# -*- coding: utf-8 -*-
# Studentクラスをつくる
class Student
    # Studentクラスのインスンスを初期化する
    def initialize(name,age)
        @name = name
        @age = age
    end

    # name属性のゲッターメソッド
    def name
        @name
    end
    # age属性のゲッターメソッド
    def age
        @age
    end

# Studentクラスのインスタンスを作成する
shin = Student.new('久保秋 真',45)

# ゲッターを使ってインスタンスの名前と年齢を表示する
puts "氏名：#{shin.name}、年齢:#{shin.age}歳"
