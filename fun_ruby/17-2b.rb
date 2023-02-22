# テキストファイルからデータを読み込んでファイル中の最初の1行だけを残して
# 残りを削除して上書きするメソッド
def first_line(file)
    File.open(file, "r+") do |io|
        # 各行を格納するための配列aryを定義
        ary=[]
        # 削除したあとの配列ary1を定義
        $ary1=[]
        io.each_line do |line|
            # each_lineは末尾に改行文字がつくので、chompで取り除く
            ary << line.chomp
            # firstで配列aryの先頭要素をaryから取得し、ary1に代入
            $ary1=ary.first
        end
        File.write(file, $ary1)
    end
end

first_line("17-2b.txt")