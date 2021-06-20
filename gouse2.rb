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

n = 1
num = 0
while n <= 40
  num += n**4
  if n == 40
    puts num
  end
  n += 1
end
