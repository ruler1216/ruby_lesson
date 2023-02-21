# テキストファイルからデータを読み込んで、ファイルの中の行を逆順に並べて上書きするメソッド
def reverse(file)
    File.open(file, "r+") do |io|
        # 各行を格納するための配列aryを定義
        ary=[]
        # reverseを使ったあとの配列ary1を定義
        ary1=[]
        io.each_line do |line|
            # each_lineは末尾に改行文字がつくので、chompで取り除く
            ary << line.chomp
            ary1=ary.reverse
            # 配列を文字列にしたtextreverseを定義
            $textreverse=ary1.join("\n")
        end
        File.write(file, $textreverse)
    end
end

reverse("17-2a.txt")