# Shift_JISで「こんにちは」と書かれたテキストファイルを作り、
# そのファイルを読み込んでUTF-8で出力するスクリプトの作成

# 作成したファイルをShift_JISで読み込み
File.open("19-2.txt", "w:Shift_JIS") do |file|
    # Shift_JISで「こんにちは」と書かれたテキストファイルの作成
    file.write("こんにちは")
end

# 上で作成したファイルを読み込んでUTF-8で出力
File.open("19-2.txt", "r:Shift_JIS") do |file|
    # readメソッドでファイルの読み込み
    # Shift_JISからUTF-8へ変換する
    str=file.read.encode("UTF-8")
    puts str
end