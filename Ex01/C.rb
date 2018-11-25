# 素数判定プログラム
# 約数が１とその数自身のみであるような自然数を素数といいます。例えば、最初の８つの素数は２，３，５，７，１１、１３，１７，１９となります。

# 素数を判定する関数
def isPrime(num)
    for i in 2..Math.sqrt(num)
        # 引数が2から数字の平方根までで割り切れるものが存在する場合は、素数ではない
        if num % i == 0 then
            return false
        end
    end
    # 素数のときtrueをリターンする
    return true
end

# 入力される数字の個数を取得します。
n = gets.chomp.to_i

# 配列を初期化します。
data = []

# 入力される数字をすべて配列に格納する。
for i in 0..n - 1
    data[i] = gets.chomp.to_i
end

count = 0
# 入力された数字を素数かどうか判定する。素数の場合はカウントする。
for i in 0..data.length - 1
    if isPrime(data[i]) == true then
        count += 1
    end
end

# 素数の個数を出力する。
puts "#{count}"
