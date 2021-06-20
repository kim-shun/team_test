
require "date"

days = ["日", "月", "火", "水", "木", "金", "土"]
day = Date.today.wday
if day != 5
  puts "今日は#{days[day]}曜日"
else
  puts "今日は花の#{days[5]}曜日だよ"
end 