# coding : utf-8

class OrangeTree
  def initialize
    @tree_age = 0
    @tree_height = 100
    @orange = 0
    @max_age = rand(10)

    puts "オレンジの木を植えてみました。"
    height
    pichAnOrange
    puts "\n"
  end

  def height
    puts "オレンジの木の高さは" << @tree_height.to_s << "cmです。"
  end

  def oneYearPasses
    @tree_age += 1
    @tree_height += 10
    @min_age = 2 + rand(2)

    if @tree_age >= @min_age
      @orange = @tree_age
    end

    puts "オレンジの木を植えてから" << @tree_age.to_s << "年経ちました。"

    if @tree_age > @max_age
      puts "残念ながら、オレンジの木は枯れてしまいました。"
      puts "また新しいオレンジの木を植えましょう。"
    end
  end

  def countTheOranges
    if @tree_age >= @min_age && @orange != 0
      puts "オレンジの実が" << @orange.to_s << "個なっています。"
    elsif @orange == 0
      puts "オレンジの実はなっていません。残念！"
    end
  end

  def pichAnOrange
    if @orange == 0
      puts "オレンジの実はなっていないので、収穫できません。"
    elsif @orange > 0
      taste = rand(2)
      @orange += -1

      if taste == 0
        puts "オレンジの実を1つ摘みました。このオレンジはちょっと酸っぱかったです。"
      else
        puts "オレンジの実を1つ摘みました。とてもおいしかったです！"
      end
    end
  end

  attr_accessor :tree_age
  attr_accessor :max_age
end

orange_tree = OrangeTree.new

while orange_tree.tree_age < orange_tree.max_age
  orange_tree.oneYearPasses
  orange_tree.height
  orange_tree.countTheOranges
  orange_tree.pichAnOrange
  orange_tree.countTheOranges
  orange_tree.pichAnOrange
  orange_tree.countTheOranges
  puts "\n"
end

if orange_tree.tree_age == orange_tree.max_age
  orange_tree.oneYearPasses
  puts "\n"
end
