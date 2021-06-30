def time_hour(hour)
  minutes = hour * 60.0
  seconds = minutes * 60.0
  day = hour / 24.0
  puts "#{hour}時間は#{minutes}分です"
  puts "#{hour}時間は#{seconds}秒です"
  puts "#{hour}時間は#{day}日です"
end

puts "時間を入力してください"
hour = gets.to_i
time_hour(hour)

def time_seconds(seconds)
  minutes = seconds / 60.0
  hour = minutes / 60.0
  day = hour / 24.0
  puts "#{seconds}秒は#{minutes}分です"
  puts "#{seconds}秒は#{hour}時間です"
  puts "#{seconds}秒は#{day}日です"
end

puts "秒を入力してください"
seconds = gets.to_i
time_seconds(seconds)

def time_minutes(minutes)
  seconds = minutes * 60.0
  hour = minutes / 60.0
  day = hour / 24.0
  puts "#{minutes}分は#{seconds}秒です"
  puts "#{minutes}分は#{hour}時間です"
  puts "#{minutes}分は#{day}日です"
end

puts "分を入力してください"
minutes = gets.to_i
time_minutes(minutes)

