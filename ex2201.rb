# -*- coding: utf-8 -*-
require 'rubygems' # RubyGemsでインストールしたときには記述
require 'dbi' # DBIを使う
require 'date'

class BookInfo
    # BookInfoクラスのインスタンスを初期化する
    def initialize(title,author,page,publish_date)
        @title = title
        @author = author
        @page = page
        @publish_date = publish_date
    end

    # 最初に検討する属性に対するアクセサを提供する
    attr_accessor :titile, :author, :page, :publish_date

    # BookInfoクラスのインスタンスの文字列表現を返す
    def to_s
        "#{@}"