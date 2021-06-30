def time(input)
  minutes = input * 60.0
  seconds = minutes * 60.0
  day = input / 24.0
  puts "#{input}時間は#{minutes}分です"
  puts "#{input}時間は#{seconds}秒です"
  puts "#{input}時間は#{day}日です"
end

puts "時間を入力してください"
input = gets.to_i
time(input)