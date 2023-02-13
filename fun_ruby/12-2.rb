# 華氏温度を摂氏温度に変換するメソッド
def fahr_to_cels(fahr)
    return (fahr.to_f - 32.0) * 5 / 9
end

100.times do |i|
    puts "摂氏温度: #{i+1} 華氏温度: #{fahr_to_cels(i+1)}"
end