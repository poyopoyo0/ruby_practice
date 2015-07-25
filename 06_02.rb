# coding: utf-8

puts "なんだって？"
word = gets.chomp

while word != "BYE"
  if word =~ /^[A-Z]+$/
    year = 1930 + rand(21)
    puts "いやー、" + year.to_s + "年以来ないねー!"
  else
    puts "は?! もっと大きな声で話しておくれ、坊や!"
  end
  word = gets.chomp
end

puts "そうかい、さようなら"
