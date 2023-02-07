# encoding: utf-8
require 'webrick' #WEBrickを使う時には記述する
require 'date'

#サーバーの設定を書いたハッシュを用意する
#ポートは通常使う80番ではなく、使ってなさそうなポート番号にしておく
#8099はあいていそうなポート番号の例
#DocumentRootは文書のある場所
#ここでは、現在のディレクトリを表す「.」を指定している
config = {
    :Port => 8099,
    :DocumentRoot => '.',
}

#WEBrickのHTTP Serverクラスのサーバーインスタンスを生成する
server = WEBrick::HTTPServer.new(config)

#mount_procメソッドで、サーバーに実行時に処理する応答を追加する
#ここでは、"http://localhost:8099/testprog"で実行できる処理を追加
#reqはリクエストの情報の、resはレスポンスのハッシュ
server.mount_proc("/testprog") { |req, res|
    #アクセスした日付をレスポンス内容に追加
    res.body << "<html><body><p>アクセスした日付は#{Date.today.to_s}です。</p>"
    res.body << "<p>リクエストのパスは#{req.path}でした。</p>"
    #リクエストの内容を、番号なしリストにしてレスポンスの内容に追加
    res.body << "<ul>"
    req.each { |key, value|
        res.body << "<li>#{key} : #{value}</li>"
    }
    res.body << "</ul>"
    res.body << "</body></html>"
}

#Ctrl-C割り込みがあった場合にサーバーを停止する処理を登録しておく
trap(:INT) do
    server.shutdown
end

#上記記述の処理をこなすサーバーを開始する
server.start