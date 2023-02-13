# 10個のサイコロを振って出た目の合計を返すメソッド
def dice10
    sum = 0

    10.times do
    dice = Random.rand(6) + 1
    sum += dice
    end
    return sum
end

puts dice10