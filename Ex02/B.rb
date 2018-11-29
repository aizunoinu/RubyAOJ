#選択ソートのプログラム
#選択ソートは、各計算ステップで１つの最小値を選択していくアルゴリズムです。

#Swap関数
def Swap(x, y)
    return y, x
end

#データの個数を入力する
n = STDIN.gets.chomp.to_i

#データを入力する
data = STDIN.gets.chomp.split(" ").map(&:to_i)

#n個の要素を持つ配列を作成する。
A = Array.new(n)

#データを代入する
for i in 0..n-1
    A[i] = data[i]
end

count = 0
#選択ソートを実施する。
for i in 0..n-1
    minj = i
    for j in i..n-1
        if A[j] < A[minj] then
            minj = j
        end
    end

    #入れ替える必要があるとき要素を入れ替える
    if i != minj then
        A[i], A[minj] = Swap(A[i], A[minj])
        count += 1
    end
end

#選択ソートの結果を出力する
for i in 0..n-2
    print "#{A[i]} "
end
puts "#{A[n-1]}"
puts "#{count}"
