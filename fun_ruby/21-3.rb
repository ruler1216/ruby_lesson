# 実行するたびにcallメソッドでそれまでに与えられた
# 引数の合計を返すProcオブジェクトを考える
def accumlator
    total=0
    Proc.new do |x|
        total+=x
    end
end

acc=accumlator
p acc.call(1)
p acc.call(2)
p acc.call(3)
p acc.call(4)