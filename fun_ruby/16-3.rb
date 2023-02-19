# アルファベットとハイフンからなる文字列を与えると、ハイフンで区切られた部分を
# Capitalizeすよようなメソッドの定義
def word_capitalize(str)
    # -をエスケープして分割
    # capitalizeメソッドは最初の文字を大文字に、以降の文字を小文字にする
    # joinメソッドで配列から文字列に変換
    return str.split(/\-/).collect{|item| item.capitalize}.join("-")
end

p word_capitalize("in-reply-to")