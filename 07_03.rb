# coding: utf-8

line_width = 40

layout_array = []
layout_array[0] = ["目次", nil]
layout_array[1] = ["1章:  数", "p. 1"]
layout_array[2] = ["2章:  文字", "p. 72"]
layout_array[3] = ["3章:  変数", "p. 118"]

layout_array.each do |layout|
  if layout[1].nil?
    puts layout[0].center line_width
  else
    puts layout[0].ljust(line_width / 2) + layout[1].rjust(line_width / 2)
  end
end
puts
