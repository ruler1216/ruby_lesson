# 変数$:にはRubyが利用するライブラリが置かれているディレクトリの名前が配列の形で格納されている。
# この変数を使ってRubyが利用できるライブラリのファイル名を順に出力するメソッドprint_librariesの定義
def print_libraries
    # 変数$:に格納されている配列の呼び出し
    $:.each do |path|
        next unless FileTest.directory?(path)
        Dir.open(path) do |dir|
            dir.each do |name|
                if name =~ /\.rb$/i
                    puts name
                end
            end
        end
    end
end

print_libraries