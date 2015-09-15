# coding : utf-8

class OrangeTree
  def initialize
    @tree_age = 0
    @tree_height = 30
    @orange = 0
    puts "オレンジの苗を植えてみました。"

    height

    @max_age = rand(11)

    while @tree_age < @max_age
      oneYearPasses
      height
      countTheOranges
    end

    if @tree_age == @max_age
      oneYearPasses
    end
  end

  def height
    puts "オレンジの木の高さは" << @tree_height.to_s << "cmです。"
  end

  def oneYearPasses
      @tree_age += 1
      @tree_height += 10
      puts "オレンジの苗を植えてから" << @tree_age.to_s << "年経ちました。"

    if @tree_age > @max_age
      puts "残念ながら、オレンジの木は枯れてしまいました。"
      puts "また新しいオレンジの苗を植えましょう。"
      @tree_age = 0
      @tree_height = 0
    end
  end

  def countTheOranges
    min_age = 2 + rand(2)
    @orange = @tree_age

    if @tree_age >= min_age
      puts "オレンジの実が"<< @orange.to_s << "個なりました。"
      pichAnOrange
    end
  end

  def pichAnOrange
    if @orange == 0
      puts "オレンジの実はなっていません。残念！"
    else
      puts "オレンジの実を1つ摘みました。とてもおいしかったです！"
    end

    @orange = 0
  end
end

OrangeTree.new
