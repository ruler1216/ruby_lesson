# 1から100までの整数が昇順に並ぶ配列a
# 初期値iの定義, 配列a, 合計値sumの定義
i = 0
a = []
sum = 0
# i=0からi=99までの繰り返し、要素の挿入
while i < 100
    a[i, 0] =[i + 1]
    sum += i + 1
    i += 1
end

# 合計値sumの出力
puts sum