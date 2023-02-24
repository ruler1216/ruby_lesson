# ディレクトリを指定するとそのディレクトリの下にあるファイルを
# 時刻の順に並べるメソッドls_tを定義
def ls_t(path)
    # エントリを取得
    entries=Dir.entries(path)
    # ディレクトリの下にあるファイルを取得するので
    # .がつくものを削除
    entries.reject{|name| name=~/^\./}

    mtimes=Hash.new
    entries=entries.sort_by do |name|
        mtimes[name]=File.mtime(File.join(path, name))
    end

    entries.each do |name|
        printf("%-40s %s\n", name, mtimes[name])
    end
rescue=>ex
    puts ex.message
end

ls_t(ARGV[0] || ".")