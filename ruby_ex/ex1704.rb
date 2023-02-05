# encoding: utf-8
# 配列にデータを作成
fruits = ["apple", "banana", "cherry", "fig", "grape"]

# "sample4.txt"を書き込みモードで新規に作成
file = File.open("sample4.txt", "w")
fruits.each{ |fruit|
    file.puts fruit
}

# ファイルを閉じる
file.close
# "sample4.txt"を読み込みモードでオープンする
file = open("sample4.txt", "r")

# ファイルからすべて読み込み、それを表示する
print file.read

# ファイルを閉じる
file.close