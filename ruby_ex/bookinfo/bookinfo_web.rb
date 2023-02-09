#encoding: utf-8
require 'webrick'
require 'erb'
require 'rubygems'
require 'dbi'

#Stringクラスのconcatメソッドを
#置き換えるパッチ
class String
    alias_method(:orig_concat, :concat)
    def concat(value)
        if RUBY_VERSION > "1.9"
            orig_concat value.force_encoding('UTF-8')
        else
            orig_concat value
        end
    end
end

config = {
    :Port => 8099,
    :DocumentRoot => '.',
}

#拡張子erbのファイルを、ERBを呼び出して処理するERBHandlerと関連付ける
WEBrick::HTTPServlet::FileHandler.add_handler("erb", WEBrick::HTTPServlet::ERBHandler)

#WEBRickのHTTP Serverクラスのサーバーインスタンスを作成する
server = WEBrick::HTTPServer.new( config )

#erbのMIMEタイプを設定
server.config[:MimeTypes]["erb"] = "text/html"

#Ctrl-C割り込みがあった場合にサーバーを停止する処理を登録しておく
trap(:INT) do
    server.shutdown
end

#上記以外の処理をこなすサーバーを開始する
server.start