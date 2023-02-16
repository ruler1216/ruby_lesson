# 数値からなる配列nums1とnums2に対して、それらの個々の要素を足し合わせた要素からなる
# 配列を返すメソッドsum_arrayを定義
def sum_array(nums1, nums2)
    # nums1とnums2を足し合わせた結果を格納する配列resultを定義
    result = Array.new
    # 配列のインデックス番号の初期値を定義
    i = 0
    
    nums1.each do |elem1|
        # num1はelem1によって最初から順に勝手に取り出される
        # nums2は勝手には取り出されないのでインデックス番号を指定
        result << elem1 + nums2[i]
        # インデックス番号は勝手には増えないのでiに1ずつ加算していく
        i += 1
    end
    return result
end

p sum_array([1, 2, 3], [2, 4, 5])