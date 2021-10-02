def change_hexa(num)
  hexa_all = "0123456789ABCDEF"
  hexa = ""
  while num > 0
    hexa = hexa_all[num % 16] + hexa
    num /= 16
  end
  return hexa
end

puts "整数を入力してください"
num = gets.to_i
result = change_hexa(num)
puts result
