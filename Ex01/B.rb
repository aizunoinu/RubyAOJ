# 最大公約数を算出するプログラム
# 2つの自然数を入力とし、それらの最大公約数を求めるプログラムを作成してください。

#値を入れ替える関数
def swap(x, y)
    return y, x
end

# xとyを入力します。
x, y = gets.chomp.split(" ").map(&:to_i)

# xとyの大小関係をチェックする
if x < y then
    x, y = swap(x, y)
end

# 最大公約数を算出する(ユークリッドの互除法)。
while x % y != 0 do
    temp = x % y
    x = y
    y = temp
end

# 最大公約数を出力する
puts "#{y}"
