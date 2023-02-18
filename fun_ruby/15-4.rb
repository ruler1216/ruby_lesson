# 空白とタブと改行で区切られた文字列をハッシュに変換するメソッドstr2hash
def str2hash(str)
    # 格納するハッシュの定義
    hash = Hash.new()
    # strを分割して配列aryに格納
    ary = str.split(/\s+/)
    # aryの偶数番号のインデックスをkeyに、奇数番号のインデックスをvalueに順々に格納していく
    while key = ary.shift
        value = ary.shift
        hash[key] = value
    end
    return hash
end

p str2hash("bule 青 white 白\nred 赤");