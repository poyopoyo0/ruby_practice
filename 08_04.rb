# coding: utf-8

def englishNumber number
  if number < 0 #  負の数は不可です。
    return '負でない数を入力してください.'
  end
  if number == 0
    return 'zero'
  end

  #  もう、上限として特別の場合は設けません。余分なreturnもなし。

  num_string = '' #  これが最終的に返す文字列です。

  ones_place = %w(one two three four five six seven eight nine)
  tens_place = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
  teenagers = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

  write = number / 1000000000000
  left  = number - (number / 1000000000000) * 1000000000000

  if write > 0
    trillions = englishNumber write
    num_string = num_string + trillions + ' trillion'

    if left > 0
      num_string += ' '
    end
  end

  write = (left / 1000000000) % 1000000000
  left  = number - (number / 1000000000) * 1000000000

  if write > 0
    billions = englishNumber write
    num_string = num_string + billions + ' billion'

    if left > 0
      num_string += ' '
    end
  end

  write = (left / 1000000) % 1000000
  left  = number - (number / 1000000) * 1000000

  if write > 0
    millions = englishNumber write
    num_string = num_string + millions + ' million'

    if left > 0
      num_string += ' '
    end
  end

  write = (number / 1000) % 1000
  left  = number - (number / 1000) * 1000

  if write > 0
    thousands = englishNumber write
    num_string = num_string + thousands + ' thousand'

    if left > 0
      num_string += ' '
    end
  end

  write = (number / 100) % 10
  left  = number - (number / 100) * 100

  if write > 0
    #  さて、ここでちょっとしたトリックを使います。

    hundreds = englishNumber write
    num_string = num_string + hundreds + ' hundred'

    #  これは「再帰法」と呼ばれる技です。さて何をやって
    #  いるのでしょう? 上の行ではメソッドの中で自分自身
    #  (訳註：つまり"englishNumber")を呼ぶように指示して
    #  います。ただし、引数として"number"の代わりに
    #  "write"を指定しています。
    #  ここで、"write"が(この時点では)、最終的に英語で
    #  出力すべき数の百の位以上の数であるということを
    #  思い出してください。
    #  2行目では、"hundreds"を"num_string"の後に追加して、
    #  さらに、' hundred'という文字列を追加しています。
    #  具体的に言うと、たとえば、最初に引数を1999とする
    #  と(つまり、"number" = 1999)、englishNumberを呼ぶ
    #  ところでは、"write"に19が入っており、"left"には99が
    #  入っています。ここで最も怠惰な考えとしては、
    #  englishNumberがまず'nineteen'を出力して、その後に
    #  ' hundred'を出力し、最後に残りの'ninety-nine'を
    #  englishNumberが出力してくれれば良いわけです。

    if left > 0
      #  この時、'two hundredfifty-one'のように
      #  ならないためにスペースを入れます。
      num_string += ' '
    end
  end

  write = left / 10 #  今度は十の桁です。
  left -= write * 10 #  そして十の桁をひきます。

  if write > 0
    if write == 1 && left > 0
      #  英語では12は"twelve"であって、"tenty-two"と
      #  言うわけには行きません。そこで、十の桁が1の
      #  ときは特別扱いしなければなりません。

      num_string += teenagers[left - 1]

      #  この"-1" は、teenagers[3] が 'fourteen'で
      #  あって、'thirteen'ではないため必要です。
      #  writeが1の場合、一の桁に関してはもう処理して
      #  しまっていますので、もう出力する必要は
      #  ありません。

      left = 0
    else
      num_string += tens_place[write - 1]

      #  この"-1" も、tens_place[3] が'forty'で'thirty'ではない
      #  ため必要。
    end

    if left > 0
      #  'sixtyfour'とは書かずに、途中にハイフンを入れます。
      num_string += '-'
    end
  end

  write = left #  ここで、一の桁を書き出します。
  left = 0 #  この桁を引きます。(0になります。)

  if write > 0
    num_string += ones_place[write - 1]
    #  この"-1"はones_place[3]が'four'であって
    #  'three'ではないから必要。
  end

  #  最後に"num_string"を返します。
  num_string
end

99999.downto(1) do |i|
  if i == 1
    puts englishNumber(i) + " Bottle of beer on the wall"
    puts englishNumber(i) + " Bottle of beer"
  else
    puts englishNumber(i) + " Bottles of beer on the wall"
    puts englishNumber(i) + " Bottles of beer"
  end

  puts "Take one down and pass it around"
  puts englishNumber(i - 1) + " Bottles of beer on the wall"
  puts
end
