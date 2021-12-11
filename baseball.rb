=begin
  処理フロー案
  投手
  123
  456
  789
  という枠に投球する

  打者
  123
  456
  789
  のどこを打つか選択する
  表で判断する？？？

  数字ドンピシャなら確実に安打
    ホームラン低確率
    高確率で長打
    低確率で短打
  同じ行列ならそれなりの確率で安打
    ホームラン無し
    低確率で長打
    高確率で短打
  そこ以外は低確率で安打
    ホームラン無し
    長打無し
    短打のみ
=end

# ruby baseball.rb
puts "投手：投球コースを選択してください"
puts <<"EOS"
-------
|1|2|3|
|4|5|6|
|7|8|9|
-------
EOS

pitcher = gets.to_i
if pitcher <= 0 || pitcher > 9
  puts "無効な値です"
  exit
end
print "選択したコース："
puts pitcher

puts "打者：狙うコースを選択してください"
puts <<"EOS"
-------
|1|2|3|
|4|5|6|
|7|8|9|
-------
EOS

batter = gets.to_i
if batter <= 0 || batter > 9
  puts "無効な値です"
  exit
end
print "選択したコース："
puts batter

if pitcher == batter
  record = rand(50)
else
  record = rand(100)
end

print "打球："
p record

if record < 2
  p "ホームラン！"
elsif record < 5
  p "スリーベース！"
elsif record < 10
  p "ツーベース！"
elsif record < 30
  p "ヒット！"
else
  p "アウト！"
end

# 出塁方式を記述する