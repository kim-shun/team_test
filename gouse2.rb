# num = 1**4 + 2**4 + 3**4
# puts num
# num = 0
# 40.times do |timesCount|
#   n = timesCount + 1
#   num += n**4
#   if n == 40
#     puts num
#   end
# end

count = 1
sum = 0
while count <= 40
  sum += count**4
  if count == 40
    puts sum
  end
  count += 1
end

# num = 0
# 40.times do |i|
#   num += (i+1)**4
#   puts num
# end