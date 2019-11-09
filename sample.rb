puts 1+2

a= "Hello Wold"

puts a

b= "こんにちは"

puts b

(5+1-2) * 3

def add(a,b)
  a + b
end

 add(4,5)

 s= 'Hello'

 n = 123 * 2

 #変数名はスネークケースでかく
 special_price = 200

 # \nを使うと改行できる。ダブルクオーテーションを使用しなければいけない
 puts "こんにちは\nさようなら"

 name = "Alice"

 puts "Hello,#{name}!" 

 #結果　Hello,Alice!

i = 10

#式展開するときは#{}の中に変数や式を書く。
puts "#{i}は16進数にすると#{i.to_s(16)}です"

#結果　10は16進数にするとaです

name = "Alice"
# +演算子で文字列連結も可能
puts "Hello," + name + "!"
