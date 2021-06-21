vegetables_price = [["cabbage", [200, 100, 320]], ["onion", [100, 210, 80]], ["carrots", [120, 150]]]

vegetables_price.each do |vegetable|
  sum = 0
  vegetable[1].each do |price|
    sum += price
  end
  puts "#{vegetable[0]}の合計金額は#{sum}です"
end
