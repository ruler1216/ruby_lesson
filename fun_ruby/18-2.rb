# ファイルとディレクトリに保存されているデータの大きさを、再帰的に掘り下げ調べ、
# 表示するメソッドdirを定義
require "find"
def dir(path)
    result=0
    Find.find(path){|f|
        if File.file?(f)
            result+=File.size(f)
        end
    }
    printf("#d #s\n", result, path)
    return result
end

du(ARGV[0] || ".")