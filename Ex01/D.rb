# 最大利益を算出するプログラム

# 入力する数を取得する
n = STDIN.gets.chomp.to_i

# 配列を初期化する
data = []
# 個数分入力する
for i in 0..n-1
    data[i] = STDIN.gets.chomp.to_i
end

# 最大利益を求める
minv = data[0]
maxv = data[1] - data[0]
for j in 1..n-1
    maxv = (maxv > (data[j] - minv)?  maxv : data[j] - minv)
    minv = (minv > data[j]? data[j] : minv)
end

# 最大利益を出力する
puts "#{maxv}"
