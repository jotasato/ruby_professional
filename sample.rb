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

#変数の手前に-をつけると出力する数値の生と負を反対にできる。
n = 1
puts -n
#出力結果 -1

#整数同士の割り算は整数になる。小数点以下は切り捨て
puts 1/2
#出力結果 0

#小数点以下の値が必要であれば、どちらかの値に.0をつける
puts 1.0 / 2
#出力結果 

#変数に整数が入っている場合は、to_fメソッドで小数から整数に変更することができる。
n = 1
puts n.to_f
#出力結果1.0
puts n.to_f / 2
#出力結果0.5

#　**でべき乗の計算ができる
puts 3 ** 3
#出力結果 27

# n + 1 と同じ計算になる。nを1増やす。
n = 1
puts n += 1 
#出力結果 2

# n - 1 と同じ計算になる。nを1減らす。
n = 1
puts n -= 1 
#出力結果 0

# n * 3 と同じ計算になる
n = 2
#2を3倍にする
puts n *= 3 
#出力結果 6

# n / 2 と同じ計算になる
n = 2
# nを2で割る。
puts n /= 2 
#出力結果 1

#nを2乗する
n = 2
puts n **= 5
#出力結果 32

#式展開(#{})を使った場合は、自動的にto_sメソッドが呼ばれる。その為、文字列に変換する必要はない。
number = 3
puts "Number is #{number}"
#出力結果 Number is 3

#少数を使う場合はRubyは丸め誤差が発生するので注意！ コンピューターでは、10進数ではなく2進数で計算しているから。
puts 0.1 * 3.0
#出力結果 0.30000000000000004

#丸め誤差発生の為、大小比較での真偽値などで影響が出る。
puts 0.1 * 3.0 == 3.0
#出力結果 false

puts 0.1 * 3.0 <= 0.3 
#出力結果 false

#丸め誤差に影響が出るような結果は、Rational(有理数)クラスを使うことで、求めていた結果を得ることができる。
#Rationクラスを使うと少数ではなく10分の3という結果が返る。
puts 0.1r * 3.0r
#出力結果 3/10

#Rationalクラスであれば大小比較などで比較をした時に、期待した結果を得ることできる。
puts 0.1r * 0.3r == 0.3
#出力結果 true

puts 0.1r * 3r <= 0.3
#出力結果 true

#変数に値が入っている時は、rationalizeメソッドを呼ぶことで、Rationalクラスの数値に変換することができる。

a = 0.1
b = 3.0

puts a.rationalize * b.rationalize
#出力結果　3/10

puts (0.1r * 3.0r).to_f
#出力結果　 0.3

# Rubyの真偽値はfalseとnilは偽(false)。それ以外は全て真(true)である。

#　Rubyはfalseとnil以外全て、真なのでコードがシンプルに書くことができる。
#データがあればそのデータを、データがなければnilを返すfind_dataという架空のメソッドを作るとする

# data = find_data

# if data
#   "データがあります"
# else
#   "データがありません"
# end

#出力結果　"データがあります"

#論理演算子・・・複数の条件を一つの条件にまとめる。
#条件1も条件2も真であれば真、それ以外は偽。
#条件1 && 条件2

t1 = true
t2 = true
f1 = false

puts t1 && t2
#出力結果 true

puts t1 && f1
#出力結果 false

#条件1か条件2のいずれかが真であれば真、両方偽であれば偽
#条件1 || 条件2

t1 = true
f1 = false
f2 = false

puts t1 || f1
#出力結果 true

puts f1 || f2
#出力結果 false

# &&と||を組み合わせて使うこともできる
# &&の優先順位は||より高い為下記の場合、「条件1かつ条件2が真、または条件3かつ条件4が真なら真」
#条件1 && 条件2 || 条件3 && 条件4
#(条件1 && 条件2 || 条件3 && 条件4)となる

t1 = true
t2 = true
t3 = false
t4 = false

puts t1 && t2 || t3 && t4
#出力結果 true

#優先順位を変えたい場合は()を使う。下記コードは条件1が真かつ、条件2または条件3が真かつ、条件4が真なら真」の意味になります。
#条件1 && ( 条件2 || 条件3 ) && 条件4

t1 = true
t2 = true
f1 = false
f2 = false

puts t1 && ( t2 || f1 ) && f2
#出力結果 false

# !演算子を使うと真切りを反転することができる。真我に偽に、偽が真になる。
t1 = true
f1 = false

puts !t1
#出力結果 false
puts !f1
#出力結果 true

#()と組み合わせると()の中の真偽値を反転させることができる。
t1 = true
f1 = false

puts t1 && f1
#出力結果 false
puts !(t1 && f1)
#出力結果 true

#if分条件分岐

# if 条件A
#   #条件Aが真だった場合の処理
# elsif 条件B
#   #条件Bが真だった場合の処理
# elsif 条件c
#   # 条件Cが真だった場合の処理
# else
#   #それ以外の条件の処理
# end

#if文の戻り値を変数に代入する
country = "italy"

greeting =
if country == "japan"
  "こんにちは"
elsif
  country == "us"
  "Hello"
elsif
  country == "italy"
  "ciao"
else
  "???"
end

#if文の結果を出力できるようになる。
puts greeting 
#出力結果 ciao



#1日であればポイント5倍
#どちらとも出力結果は同じになる。2つめのif分は後置ifといってifを修飾子として文の後ろに置くことができる。

day = 1
point = 7
if day == 1
  puts point *= 5
end
#出力結果35

point = 7
day = 1
point *=5  if day == 1
puts point
#出力結果35


# #ifとelsifの後ろにthenを入れることができる。
# if 条件A then
#   #条件Aが真だった場合の処理
# elsif 条件B then
#   #条件Bが真だった場合の処理
# else
#   # それ以外の処理
# end

# country = "italy"
# if country == "japan" then "こんにちは"
# elsif country == "us" then "Hello"
# elsif country == "italy" then "ciao"
# else "???"
# end

