# encoding: utf-8
# 行番号用の変数
line_no = 0

# "sample1.txt"を読み込むモードでオープンする
file = open("sample1.txt", "r")

# ファイルの終わりまで、1行ずつlineに読み込む
while( line = file.gets )

    # 読み込んだ行を行数とともに表示する
    line_no += 1
    print("#{line_no}:#{line}")
end

# ファイルを閉じる
file.close