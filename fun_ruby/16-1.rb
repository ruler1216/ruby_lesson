# 電子メールのアドレスは「ローカルパート@ドメイン名」となっている。
# ローカルパートを$1として、またドメイン名を$2として取得する正規表現メソッドの定義
def get_local_and_domain(str)
    # 行頭に@以外の文字列が来て、その繰り返し。@の後は、行末まで任意の文字列の繰り返し。()でキャプチャ指定。
    str =~ /^([^@]+)@(.*)$/
    local = $1
    domain = $2
    return local, domain
end

p get_local_and_domain("example@example.com")