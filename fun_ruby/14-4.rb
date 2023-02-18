# 文字列に含まれる各単語を要素とする配列の作成
str = "Ruby is an object oriented programming language"

str.each_char do |s|
    p "#{s}": "#{str.index(s)}"
end

str1 = "Ruby is an object oriented programming language"
count = Hash.new
str1.each_char do |c|
    count[c] = 0 unless count[c]
    count[c] += 1
end
count.keys.sort.each do |c|
    printf("'%s': %s\n", c, "*" * count[c])
end