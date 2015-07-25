# coding: utf-8

puts "なんだって？"
word = gets.chomp
bye_count = 0

while bye_count < 3
  if word == "BYE"
    year = 1930 + rand(21)
    puts "いやー、" + year.to_s + "年以来ないねー!"
    bye_count += 1
  elsif word =~ /^[A-Z]+$/
    year = 1930 + rand(21)
    puts "いやー、" + year.to_s + "年以来ないねー!"
    bye_count = 0
  else
    puts "は?! もっと大きな声で話しておくれ、坊や!"
    bye_count = 0
  end

  if bye_count != 3
    word = gets.chomp
  end
end

puts "そうかい、さようなら"
