require "date"

puts "#{Date.today.strftime('%B')} #{Date.today.strftime('%Y')}"

week_days = ["Su","Mo","Tu","We","Th","Fr","Sa"]

puts week_days.join(" ")

year = Date.today.year
month = Date.today.month
first_day = Date.new(year, month, 1)
last_day = Date.new(year, month, -1)

days = []

(first_day.day..last_day.day).each{|day| 
  puts day.to_s.rjust(2)
}






# 出力例
#      April 2013
# Su Mo Tu We Th Fr Sa
#     1  2  3  4  5  6
#  7  8  9 10 11 12 13
# 14 15 16 17 18 19 20
# 21 22 23 24 25 26 27
# 28 29 30

