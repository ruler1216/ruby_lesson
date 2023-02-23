# EUC-JPの文字列str_eucとShift-JISの文字列str_sjisを連結して
# UTF-8の文字列を返すメソッドto_utf8(str_euc, str_sjis)を定義
def to_utf8(str_euc, str_sjis)
    # encodeメソッドを使ってそれぞれをUTF-8に変換してから連結
    str_euc.encode("utf-8")+str_sjis.encode("utf-8") 
end

# str_eucの入力
puts "EUC-JP文字列の入力:"
puts str_euc=gets.chomp.encode("EUC-JP")
# str_sjisの入力
puts "Shift_JIS文字列の入力:"
puts str_sjis=gets.chomp.encode("Shift_JIS")

puts to_utf8(str_euc, str_sjis)