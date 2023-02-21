# テキストファイルからデータを読み込んでテキストの行数,単語数,文字数を数えるメソッド
# 空白や改行以外の文字の並びのことを単語と呼ぶ
def count(textfile)
    # 行数,単語数,文字数の初期化
    nline=nword=nchar=0
    # textfileをブロックで読み込んだので、closeメソッドは不要
    File.open(textfile){|file|
        file.each_line {|io|
            # 行数のカウント
            nline=file.lineno
            # 空白と改行を区切りとして配列を作成
            # 空白などが配列の要素に含まれている場合は、それを取り除く
            word=io.split(/\s+/).reject{|item| item.empty?}
            # 配列の長さ、つまり単語数をカウント(行ごとに読み込まれるので、+=にしないといけない)
            # +=がないと行の単語数が出力されるようになる
            nword+=word.size
            # 文字数をカウント(ioは文字列なので、長さを読み込んで足していけばよい)
            nchar+=io.length
        }
    }
    puts "line=#{nline}, nword=#{nword}, nchar=#{nchar}"
end

count("17-1.txt")