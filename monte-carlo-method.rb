# 円周率をモンテカルロ法で求める
# 1
def square(n)
  return n*n
end

# 2.ここで円の内部に置いたてんの個数を返す関数 => inPを返却する
def monte(n)
  count = 0
  # 3.n回ループを回してMath::sqrt(square(rand) + square(rand)) < 1がtrueの時にカウントをする
  for i in 1..n do
    if Math::sqrt(square(rand) + square(rand)) < 1
      count += 1
    end
  end
  return count
end

def pi(n)
  return monte(n).to_f/(n/4)
end

puts pi(10000)
