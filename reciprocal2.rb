
# sum = 0
# 10000.times do |timesCount|
#   count = timesCount + 1
#   sum += 1.0/count
#   if sum >= 7
#    puts sum
#    puts count
#    return
#   end
# end


# num = []
# sum = 0
# count = 0
# while sum < 7
#   count += 1
#   reciprocal = 1.0/count
#   num << reciprocal
#   sum = num.sum
# end
# puts num.length

# num = 0
# 20.times do |i|
#   num += 1.0/(i + 1)
#   puts num
# end

# sum = 0
# n0 = 1.step do |n|
#   sum += 1.0 / n
#   break n if sum > 7
# end

# puts n0, sum
# => 616
#    7.001274097134162


sum = 0
n0 = 1.step do |n|
  sum += 1r / n
  break n if sum > 7
end

puts n0, sum.to_f
# => 616
#    7.001274097134161
