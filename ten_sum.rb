# def near_ten(num)
#   remainder = num % 10
#   if remainder <= 5
#     puts "10の倍数との差は#{remainder}です"
#   else
#     puts "10の倍数との差は#{10 - remainder}です"
#   end
# end


# puts "3桁の正の整数を入力してください"
# num = gets.to_i
# near_ten(num)





def near_ten(num)
  total = (num/100) + (num/10 % 10) + (num % 10)
  remainder = total % 10
  if remainder <= 2 || remainder >= 8
    puts "True"
  elsif remainder <= 5
    puts "10の倍数との差は#{remainder}です"
  else 
    puts "10の倍数との差は#{10 - remainder}です"
  end
end

near_ten(117) # True
near_ten(123) # 10の倍数との差は4です
near_ten(111) # 10の倍数との差は3です
near_ten(98) # 10の倍数との差は3です
near_ten(124) # 10の倍数との差は3です
near_ten(400) # 10の倍数との差は4です
near_ten(45) # True

