# coding: utf-8

puts "単語を入力して下さい"
input_word = gets.chomp
word = [input_word]

while input_word != ""
  input_word = gets.chomp

  if input_word == ""
    break
  end
  
  word << input_word
end

if input_word == ""
  if word[0] == ""
    puts "入力がありません"
  else
    puts "ソートした出力を表示します"
    puts word.sort
    puts
  end
end
