
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


num = []
sum = 0
count = 0
while sum < 7
  count += 1
  reciprocal = 1.0/count
  num << reciprocal
  sum = num.sum
end
puts num.length

# num = 0
# 20.times do |i|
#   num += 1.0/(i + 1)
#   puts num
# end



