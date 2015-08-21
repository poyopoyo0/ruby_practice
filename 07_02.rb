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

  return word_array
end

class Array
  def quick_sort
    return self if self.length <= 1
    pivot = pop
    left, right = partition { |e| e < pivot }
    push pivot
    left.quick_sort + [pivot] + right.quick_sort
  end
end
  
puts "単語を入力して下さい"
word = store_words

while word.size == 1 && word[0] == ""
  puts "入力が見つかりません。入力をやり直して下さい"
  word = store_words
end

puts "ソートした結果を表示します"
word.each_with_index do |words, i|
  word_array = words.each_codepoint.to_a
  word_array.each_with_index do |w, i|
    word_array[i] = sprintf("%07d", w.to_i)
  end
  word[i] = word_array.join(";")
end

word = word.quick_sort

word.each_with_index do |words, i|
  words_string_array = words.split(";")
  words_string_array.each_with_index do |w, i|
    words_string_array[i] = w.to_i.chr(Encoding::UTF_8)
  end
  word[i] = words_string_array.join
end

puts word
puts
