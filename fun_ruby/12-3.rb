# サイコロを振って出た目(1~6までのランダムな整数)を返すメソッド
# 0からi-1までなので+1する。
def dice
    return Random.rand(6) + 1
end