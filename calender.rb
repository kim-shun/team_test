require "date"

year_month =  "#{Date.today.strftime('%B')} #{Date.today.strftime('%Y')}"
puts year_month.center(20)
this_year = Date.today.year
this_month = Date.today.month
first_day = Date.new(this_year, this_month,1)
last_day = Date.new(this_year, this_month,-1)
wday_first = first_day.wday
blank = "   " * wday_first

puts "Su Mo Tu We Th Fr Sa"
print blank
(first_day.day..last_day.day).each{ |day|
  printf("%2d ", day)

  if (wday_first + day) % 7 == 0
    puts "\n"
  end
}


# week_days = ["Su","Mo","Tu","We","Th","Fr","Sa"]

# puts week_days.join(" ")

# year = Date.today.year
# month = Date.today.month
# first_day = Date.new(year, month, 1)
# last_day = Date.new(year, month, -1)


# (first_day.day..last_day.day).each{|day|
#   if day <= 9
#     print " #{day} "
#   else
#     print "#{day} "
#   end
#   if day % 7 == 0
#     print "\n"
#   end
# }




#模範解答

# require 'date'

# head = Date.today.strftime("%B %Y")  # 今日の月と西暦を取得
# year = Date.today.year
# mon = Date.today.mon
# firstday_wday = Date.new(year,mon,1).wday   # 今月1日の曜日を取得(0~6)
# lastday_date = Date.new(year,mon,-1).day    # 今月の最終日を取得
# week = %w(Su Mo Tu We Th Fr Sa)

# puts head.center(20)        # 月と西暦中央寄せで出力
# puts week.join(" ")         # 曜日を出力
# print "   " * firstday_wday # 1日までの空白を出力

# wday = firstday_wday
# (1..lastday_date).each do |date|    # 1~最終日まで繰り返し
#   print date.to_s.rjust(2) + " "    # 日付を右寄せで表示
#   wday = wday+1
#   if wday%7==0                      # 土曜日まで表示したら改行
#     print "\n"
#   end
# end
# if wday%7!=0
#   print "\n"
# end






# 出力例
#      April 2013
# Su Mo Tu We Th Fr Sa
#     1  2  3  4  5  6
#  7  8  9 10 11 12 13
# 14 15 16 17 18 19 20
# 21 22 23 24 25 26 27
# 28 29 30

