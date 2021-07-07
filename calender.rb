require "date"

puts Date.today.strftime('%B' '%Y')

puts Date.today.strftime('%a')
year = Date.today.year
mon = Date.today.mon
puts year
puts mon
days = ["Su","Mo","Tu","We","Th","Fr","Sa"]
first = Date.new(year,mon,1).wday
last = Date.new(year,mon,-1).day
puts first
puts last

a = Date.new
30.times do 
  b = a.strftime('%e')
  p b.ljust(7)
  a += 1
end

s = "Ruby"
 p s.center(10) 


# 出力例
#      April 2013
# Su Mo Tu We Th Fr Sa
#     1  2  3  4  5  6
#  7  8  9 10 11 12 13
# 14 15 16 17 18 19 20
# 21 22 23 24 25 26 27
# 28 29 30

