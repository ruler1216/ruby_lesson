# 文字列に含まれる各単語を要素とする配列の作成
str = "Ruby is an object oriented programming language"
ary = str.split(" ")

# 配列aryをアルファベット順にソートする
# 配列に格納されているので、Arrayクラスを使うことができる
p ary.sort_by {|i| -i}