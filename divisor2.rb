
def divisor(num, range)
  divisible = []
  divisible_range = []
  i = 1
  while i <= num
    divisible_or = num % i
    if divisible_or == 0
      puts i
      divisible << i
      if i <= range
        divisible_range << i
      end
    end
    i += 1
  end
  puts "約数の数は#{divisible.length}です"
  puts "約数の総和は#{divisible.sum}です"
  puts "#{range}以下の約数の和は#{divisible_range.sum}です"
end

puts "約数の総和を出したい整数を入力してください"
num = gets.to_i
puts "求めたい約数の和の範囲を指定してください"
range = gets.to_i
divisor(num, range)

