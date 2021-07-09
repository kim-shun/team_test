# def sample(input)
#   #ten_rank = input / 10
#   ten_rank = (input / 10) % 10
#   one_rank = input % 10
#   addition = ten_rank + one_rank
#   multiplication = ten_rank * one_rank
#   addmulti = addition + multiplication
#   puts "足し算と掛け算の合計結果は#{addmulti}です"
# end

# puts "二桁以上の整数を入力してください"
# input = gets.to_i
# sample(input)


def addition(a, b)
  a + b
end

def multiplication(a,b)
  a * b
end

def slice_num(num)
  # 10の位
  tens_place = (num / 10) % 10
  # 1の位
  ones_place = num % 10
  return tens_place, ones_place
end

puts "二桁の整数を入力してください"
input = gets.to_i
X, Y = slice_num(input)
add_result = addition(X, Y)
multiple_result = multiplication(X, Y)
puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"
