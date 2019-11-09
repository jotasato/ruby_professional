#メソッドの定義 Rubyはdefを使ってメソッドの定義をする。
#def メソッド名(引数1,引数2)
  #必要な処理
# end

def add(a,b)
  a + b
end

puts add(1,2)
#出力結果 3

#Rubyは最後に評価された式が、メソッドの戻り値になるのが特徴である。returnは使えるが、使わない書き方が主流である。
def add(a,b)
  return a + b
end

puts add(1,2)

#()を省略できるが、引数がある場合は()を付けることのほうが多い
def greeting(country)
  if country == "japan"
    "こんにちは"
  else
    "hello"
  end
end

puts greeting("japan")
# 出力結果 こんにちは
puts greeting("us")
# 出力結果  hello

