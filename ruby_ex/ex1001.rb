# encoding: utf-8
require 'date'

#蔵書1冊分の蔵書データのクラスを作る
class BookInfo
    #BookInfoクラスのインスタンスを作る
    def initialize( title, author, page, publish_date)
        @title = title
        @author = author
        @page = page
        @publish_date = publish_date
    end

    # 最初に検討する属性に対するアクセサを提供する