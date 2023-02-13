# 整数numが素数であるかどうかを調べるメソッド
# 正の整数Nを2つの正の整数の積の形に表すとき必ずそのうちの1つは1以上√N以下になる。
# prime?となっているので、このメソッド自体がtrueかfalseかを出力する
def prime?(num)
    # numが負,0,1の場合falseを出力
    return false if num < 2
    # num % 1 == 0とnum % num == 0以外に余りが0になるものを見つけるのは大変なので
    # 平方根を使って、条件式に1とnumで割る展開を防いでいる
    2.upto(Math.sqrt(num)) do |i|
        if num % i == 0
            return false
        end
    end
    return true
end

1.upto(100) do |i|
    # prime?は真偽値しか返さないので、条件文にしようできる
    if prime?(i) 
        puts "#{i}は素数である"
    else
        puts "#{i}は素数ではない"
    end
end