def binary_number(num)
  binary = ""
  while num > 0
    binary = (num % 2).to_s + binary
    num /= 2
  end
  return binary
end

puts "整数を入力してください"
num = gets.to_i
result = binary_number(num)
puts result