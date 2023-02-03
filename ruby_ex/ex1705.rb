# encoding: utf-8
# 配列にデータを作成
indians = ["one little, two little, three little Indians\n",
            "Four little, five little, six little Indians\n",
            "Seven little, eight little, nine little Indians\n",
            "Ten little Indians boys.\n"]

# "sample5.txt"を書き込みモードで新規に作成
file = File.open("sample5.txt", "w")
indians.each{ |indian|
    file.print indian
}

# ファイルを閉じる
file.close
# "sample4.txt"を読み込みモードでオープンする
file = open("sample5.txt", "r")

# ファイルからすべて読み込み、それを表示する
print file.read

# ファイルを閉じる
file.close