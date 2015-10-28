# coding: utf-8

def store_words
  input = gets.chomp
  word_array = [input]

  while input != ""
    input = gets.chomp
    word_array << input

    if word_array[-1] == ""
      word_array.pop
      break
    end
  end

  word_array
end

puts "単語を入力して下さい"
word = store_words

while word.size == 1 && word[0] == ""
  puts "入力が見つかりません。入力をやり直して下さい"
  word = store_words
end

puts "ソートした結果を表示します"
puts word.sort
puts
