# バブルソート
# バブルソートはその名前が表すように、泡（Bubble）が水面に浮かび上がっていくように配列の要素が動いていきます。
# バブルソートは次のようなアルゴリズムで数列を昇順に並び替えます。

# swap関数
def swap(x, y)
    return y, x
end

# 数字の個数を入力する。
n = STDIN.gets.chomp.to_i

# 数字を入力します。
data = STDIN.gets.chomp.split(" ").map(&:to_i)

# n個の要素を持つ配列Aを作成
A = Array.new(n)

# 値の代入
for i in 0..n-1
    A[i] = data[i]
end

# バブルソートを使用して数列を昇順に並び替えます。
flag = 1
count = 0
while flag == 1 do
    flag = 0
    for j in 1..n-1
        if A[n - j] < A[n - j - 1] then
            A[n - j], A[n - j - 1] = swap(A[n - j], A[n - j - 1])
            flag = 1
            count += 1
        end
    end
end

# 並び替え後の値を出力
for i in 0..n-2
    print "#{A[i]} "
end
puts "#{A[n-1]}"

# 入れ替え回数を出力
puts "#{count}"
