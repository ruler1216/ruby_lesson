# Arrayクラスのcollectメソッドのような動作をするmy_collectメソッドの作成
# collectメソッドは配列の各要素にブロックを適用して、その結果を新しい配列にするメソッド
# ここでブロック変数(%引数名)を使うことによりメソッドを呼び出すときにブロックを引き渡す
# また、与えられたブロックは自動的にProcオブジェクトに包まれる
# ブロック変数は呼び出すときには書かない
def my_collect(obj, &block)
    # 結果の配列を初期化
    result=[]
    # 引数として得た配列の要素を順番に処理する
    obj.each do |item|
        # もしブロックがあるのであれば(&blockのblockを使っている?)
        if block
            # callメソッドによりブロックの実行
            result<<block.call(item)
        else
            # ブロックがなければそのまま実行
            result<<item
        end
    end
    # 結果の配列を戻り値として返す
    return result
end

# ブロックを使用
ary=my_collect([1, 2, 3, 4, 5]) do |i|
    i*2
end

# ブロック変数によるブロックの引き渡し
p ary