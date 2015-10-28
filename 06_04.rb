# coding: utf-8

def input_year
  puts "開始の年を入力して下さい。"
  start_year = gets.chomp

  while start_year !~ /^[-]?[0-9]+(\.[0-9]+)?$/
    puts "半角数字のみを入力して下さい。"
    start_year = gets.chomp
  end

  puts "終了の年を入力して下さい。"
  end_year = gets.chomp
  while end_year !~ /^[-]?[0-9]+(\.[0-9]+)?$/
    puts "半角数字のみを入力して下さい。"
    end_year = gets.chomp
  end
  puts

  [start_year, end_year]
end

year_array = input_year

while year_array[0].to_i > year_array[1].to_i
  puts "終了の年は、開始の年より後の年にして下さい"
  puts
  year_array = input_year
end

leap_year = []
((year_array[0].to_i)..(year_array[1].to_i)).each do |year|
  if (year % 4) == 0 && (year % 100) != 0
    leap_year.push year
  elsif (year % 400) == 0
    leap_year.push year
  end
end

if leap_year.length == 0
  puts "入力した年の範囲に閏年はありません。"
else
  puts "入力した年の範囲の閏年は、" + leap_year.join("年、") + "年です。"
end
puts
