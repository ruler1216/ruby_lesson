# encoding: utf-8
# 新しいハッシュを作る
friends = {
    :shin => "Shin Kuboaki",
    :shinichirou => "Shinichirou Ooba",
    :shingo => "Shingo Katori"
}

# ハッシュのキーを1つずつ処理する
# 繰り返しの都度、キーと値をブロック内のローカル変数keyに渡す
friends.each_key{ |key|
    # ローカル変数(キー)の値を表示する
    puts "#{key}"    
}