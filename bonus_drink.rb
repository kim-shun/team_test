def can_drink(purchase)
  count = 1
  while count <= purchase
    if count % 3 == 0
      purchase += 1
    end
    count += 1
  end
  puts "トータルで#{purchase}本飲めます"
end

puts "飲み物を何本購入しましたか？"
purchase = gets.to_i
can_drink(purchase)


