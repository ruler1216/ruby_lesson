# encoding: utf-8
# "sample1.txt"を読み込むモードでオープンする
file = open("sample1.txt", "r")

# ファイルの行を1行ずつ取り出して、lineに読み込む
file.each{ |line| 
    # lineを表示する
    print line
}

# ファイルを閉じる
file.close