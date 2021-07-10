# def can_drink(purchase)
#   count = 1
#   while count <= purchase
#     if count % 3 == 0
#       purchase += 1
#     end
#     count += 1
#   end
#   puts "トータルで#{purchase}本飲めます"
# end

# puts "飲み物を何本購入しましたか？"
# purchase = gets.to_i
# can_drink(purchase)


#ループ処理をやめる

def can_drink(purchase)
  bottles = purchase
  while bottles >= 3
    bonus = bottles / 3
    purchase += bonus
    bottles = bottles % 3 + bonus
  end
  puts "トータルで#{purchase}本飲めます"
end

puts "飲み物を何本購入しましたか？"
purchase = gets.to_i
can_drink(purchase)



#解答例
# def count_additional_bottle(n)             # 空き瓶の本数を受け取って追加で飲める本数を返す
#   if n<3
#     0
#   else
#     n/3 + count_additional_bottle(n/3+n%3)
#   end
# end

# def count_bottle(n)
#   n + count_additional_bottle(n)           # 最初に飲んだ本数と、追加で飲める本数の和を計算
# end

# puts count_bottle 0     # => 0
# puts count_bottle 1     # => 1
# puts count_bottle 3     # => 4
# puts count_bottle 11    # => 16
# puts count_bottle 100   # => 149