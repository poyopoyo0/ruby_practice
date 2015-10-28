# coding: utf-8

99.downto(1) do |i|
  if i == 1
    puts i.to_s << " Bottle of beer on the wall"
    puts i.to_s << " Bottle of beer"
  else
    puts i.to_s << " Bottles of beer on the wall"
    puts i.to_s << " Bottles of beer"
  end

  puts "Take one down and pass it around"
  puts((i - 1).to_s << " Bottles of beer on the wall")
  puts
end
