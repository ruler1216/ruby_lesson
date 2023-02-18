# 文字列に含まれる各単語を要素とする配列の作成
str = "Ruby is an object oriented programming language"
ary = str.split(" ")

# 配列aryをアルファベット順にソートする
# 配列に格納されているので、Arrayクラスを使うことができる
# 大文字を小文字にしたうえでソートを行う
# iにはaryの要素がそれぞれ格納されるので、文字列であるiにdowncaseを適用
p ary.sort_by {|i| -i.downcase}