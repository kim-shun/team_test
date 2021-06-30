def near_ten(num)
  remainder = num % 10
  if remainder <= 5
    puts "10の倍数との差は#{remainder}です"
  else
    puts "10の倍数との差は#{10 - remainder}です"
  end
end


puts "3桁の正の整数を入力してください"
num = gets.to_i
near_ten(num)

# near_ten(117)
# near_ten(123)
# near_ten(111)