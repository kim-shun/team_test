array = [2,3,4,5,7,8,9]
puts array.sample #9
print array.sample(4) #[3, 9, 7, 5]
puts "\n"
puts array.sample(4)
# 5
# 8
# 3
# 2

p array.sample #9
p array.sample(4) #[3, 9, 7, 5]

b = (1..15).to_a #配列にする
print b.sample(4) #[4, 12, 8, 9]