# coding: utf-8

def grandpa &block
  repeat_times = Time.now.hour % 12

  if repeat_times == 0
    12.times do
      block.call
    end
  else
    repeat_times.times do
      block.call
    end
  end
end

puts

grandpa do
  puts "DONG!"
end

puts

clock = 0
array = ["哲学", "ロシア文学", "シェイクスピア", "ホメロス", "ギリシャ神話", "映画", "数学", "Linux", "機械学習", "民俗学", "ケインズ", "古事記"]
grandpa do
  clock += 1
  content_sample= array.sample
  puts clock.to_s << "時には" << content_sample << "の本を読みました。"
  array.delete(content_sample)
end

puts

clock = 0
factorial_num = 1
grandpa do
  clock += 1
  factorial_num = factorial_num * clock
  puts clock.to_s << "の階乗（" << clock.to_s << "!）は" << factorial_num.to_s << "です。"
end

puts
