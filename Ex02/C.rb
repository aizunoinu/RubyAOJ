#安定なソート
#バブルソートと選択ソートは「安定なソート」であるかを判定します。

#Swap関数
def Swap(x, y)
    return y, x
end

#データの個数を入力します
n = STDIN.gets.chomp.to_i

#データを入力します。
data = STDIN.gets.chomp.split(" ").map(&:to_s)

#n個の要素を持つ配列を定義します。
A = Array.new(n)

#データを代入します。
for i in 0..n-1
    A[i] = data[i]
end

#BにAをコピーします
B = A.clone

# バブルソートを使用して数列を昇順に並び替えます。
flag = 1
while flag == 1 do
    flag = 0
    for j in 1..n-1
        if A[n - j] < A[n - j - 1] then
            A[n - j], A[n - j - 1] = Swap(A[n - j], A[n - j - 1])
            flag = 1
        end
    end
end

#選択ソートを実施する。
for i in 0..n-1
    minj = i
    for j in i..n-1
        if B[j] < B[minj] then
            minj = j
        end
    end

    #入れ替える必要があるとき要素を入れ替える
    if i != minj then
        B[i], B[minj] = Swap(B[i], B[minj])
    end
end

# 並び替え後の値を出力
for i in 0..n-2
    print "#{A[i]} "
end
puts "#{A[n-1]}"

# 並び替え後の値を出力
for i in 0..n-2
    print "#{B[i]} "
end
puts "#{B[n-1]}"
