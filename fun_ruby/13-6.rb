# 1から100の整数を含む配列aryから1~10, 11~20のように10個の要素を含む配列を10個取り出す
ary = (1..100).to_a

# 取り出した全ての配列を順に別の配列resultに格納するresultの定義
result = Array.new
# 数え上げメソッドtimesは0から順に入る
10.times do |i|
    result << ary[i * 10..9 + i * 10]
end

# 配列resultの出力のためにpメソッドを使用
p result