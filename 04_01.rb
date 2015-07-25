# coding: utf-8

puts 'こんにちは！ 君の名前は何かな?'
name = gets.chomp
puts '君の名前は ' + name + 'だね. 良い名前じゃないか!'
puts '会えてうれしいよ, ' + name + '.  :)'
puts
puts
puts
puts
puts
puts 'ところで、君の好きな数字は何かな？'
number = gets.chomp.to_i
puts 'なるほど、君の好きな数字は ' + number.to_s + ' なんだね.'
puts 'でも、 ' + (number.to_i + 1).to_s + ' の方が、もっといい数字じゃないかな？'