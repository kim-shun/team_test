
# num = 0
# 10000.times do |timesCount|
#   n = timesCount + 1
#   num += 1.0/n
#   if num >= 7
#    puts num
#    puts n
#    return
#   end
# end


num = []
sum = 0
n = 0
while sum < 7
  n += 1
  a = 1.0/n
  num << a
  sum = num.sum
end
puts num.length




