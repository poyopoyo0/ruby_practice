# coding : utf-8

class OrangeTree
  def initialize
    @tree_age = 0
    @tree_height = 100
    @orange = 0

    puts "オレンジの木を植えてみました。"
    height
    pichAnOrange
    puts

    @max_age = rand(11)

    while @tree_age < @max_age
      oneYearPasses
      height
      countTheOranges
      puts
    end

    if @tree_age == @max_age
      oneYearPasses
      puts
    end
  end

  def height
    puts "オレンジの木の高さは" << @tree_height.to_s << "cmです。"
  end

  def oneYearPasses
      @tree_age += 1
      @tree_height += 10
      puts "オレンジの木を植えてから" << @tree_age.to_s << "年経ちました。"

    if @tree_age > @max_age
      puts "残念ながら、オレンジの木は枯れてしまいました。"
      puts "また新しいオレンジの木を植えましょう。"
    end
  end

  def countTheOranges
    min_age = 2 + rand(2)

    if @tree_age >= min_age
      @orange = @tree_age
      puts "オレンジの実が"<< @orange.to_s << "個なりました。"
    end

    pichAnOrange
  end

  def pichAnOrange
    if @orange == 0
      puts "オレンジの実はなっていません。残念！"
    else
      taste = rand(2)

      if taste == 0
        puts "オレンジの実を1つ摘みました。今年のオレンジはちょっと酸っぱかったです。"
      else
        puts "オレンジの実を1つ摘みました。とてもおいしかったです！"
      end
    end

    @orange = 0
  end
end

OrangeTree.new
