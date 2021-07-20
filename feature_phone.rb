def feature_phone(input)
  input1 = [".", ",", "!", "?", " "]
  if input.include?(1)
end

puts "数字を入力してください"
input = gets.to_i
feature_phone(input)

# input
# 5
# 20
# 220
# 222220
# 44033055505550666011011111090666077705550301110
# 000555555550000330000444000080000200004440000

# output
# a
# b
# b
# hello, world!
# keitai