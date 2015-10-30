# coding : utf-8

puts "生まれた年を入力して下さい"
birth_year = gets.chomp
puts "生まれた月を入力して下さい"
birth_month = gets.chomp
puts "生まれた日を入力して下さい"
birth_day = gets.chomp

age = ((Time.now.strftime("%Y%m%d").to_i - Time.mktime(birth_year, birth_month, birth_day).strftime("%Y%m%d").to_i) / 10000).to_i
puts

for year in 0..age do
  puts((birth_year.to_i + year).to_s << "年" << birth_month.to_s << "月" << birth_day.to_s << "日、" << year.to_s << "歳の誕生日おめでとう！")
end
puts "\n"
