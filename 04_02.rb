# coding: utf-8
require "nkf"

puts "ところで、君の好きな数字は何かな？"
number = NKF.nkf("-m0Z1 -w", gets.chomp)
puts "なるほど、君の好きな数字は " + number.to_s + " なんだね."
puts "でも、 " + (number.to_i + 1).to_s + " の方が、もっといい数字じゃないかな？"
