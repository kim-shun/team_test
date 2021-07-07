require "date"

puts "#{Date.today.strftime('%B')} #{Date.today.strftime('%Y')}"

week_days = ["Su","Mo","Tu","We","Th","Fr","Sa"]

puts week_days.join(" ")

year = Date.today.year
month = Date.today.month
first_day = Date.new(year, month, 1)
last_day = Date.new(year, month, -1)

count = 0
(first_day.day..last_day.day).each{|day|
  count += 1
  if count <= 7
    print "#{day}  "
  elsif count == 8
    print "\n#{day}  "
  elsif count <= 14
    print "#{day} "
  elsif count == 15
    print "\n#{day} "
  elsif count <= 21
    print "#{day} "
  elsif count == 22
    print "\n#{day} "
  elsif count <= 28
    print "#{day} "
  elsif count == 29
    print "\n#{day} "
  else
    print "#{day} "
  end
}








# 出力例
#      April 2013
# Su Mo Tu We Th Fr Sa
#     1  2  3  4  5  6
#  7  8  9 10 11 12 13
# 14 15 16 17 18 19 20
# 21 22 23 24 25 26 27
# 28 29 30

