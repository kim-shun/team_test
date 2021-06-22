# class Fruit
#   def self.fresh
#     puts "採れたて新鮮な果実です"
#   end
 
#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
 
#   def introduce
#     puts "#{@name}は#{@price}です"
#   end
# end
 
 
 
#  apple = Fruit.new("りんご", 120)
#  orange = Fruit.new("オレンジ", 200)
#  strawbery = Fruit.new("いちご", 60)
#  Fruit.fresh
#  apple.introduce
#  orange.introduce
#  strawbery.introduce

class Car

  def self.sell
    puts "こちらの車を販売しています"
  end

  def initialize(name, price)
    @car_name = name
    @car_price = price
  end
 
  def introduce
    puts "#{@car_name}は#{@car_price}円です"
  end
end

Car.sell

tanto = Car.new("タント", 5000000)
n_box = Car.new("N-BOX", 6000000)
hustler = Car.new("ハスラー", 7000000)

tanto.introduce
n_box.introduce
hustler.introduce

