# ファイルの最後の行から数えて指定された行数分だけ、そのファイルの中身を出力するメソッドtail
def tail(nline, file)
    File.open(file, "r+") do |file|
        # ファイルの最後の行から数えるので、全体-nlineで行けるので、まず全体の行数を求める
        # 全体の行数$alllineを定義
        $allline=0
        # 全体の行を格納するために配列$aryを定義
        $ary=[]
        # 該当する行を要素として持つ配列$ary1を定義
        $ary1=[]
        # 全体の行数を求める
        file.each_line do |line|
            $ary<<line.chomp
            $allline+=1
        end
        # 文字列にする前に、該当する行だけ配列$ary1に格納
        ($allline-nline).times {|i|
            $ary1<<$ary[$allline-nline+i]
        }
        # 配列$ary1を文字列にする
        text=$ary1.join("\n")
        # textでファイルに書き込みをする
        File.write(file, text)
    end
end

tail(5, "17-3.txt")