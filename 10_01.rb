# coding: utf-8

def grandpa &block
  (Time.now.hour % 12).times do
    block.call
  end
end

grandpa do
  puts "DONG!"
end

array = ["こんにちは","こんばんは","海に行かない？","海外へ行こう","温泉に行きたい","久し振り"]
grandpa do
  puts array.sample
end
