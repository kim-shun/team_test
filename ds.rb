#1日1万歩歩いているかどうかを判定する
# def walking(d,s)
#   d_cm = (d * 1000) * 100
#   steps = d_cm / s rescue 0
#   if (d >= 0 && d <= 20) && (s >= 30 && s <= 100)
#     if steps >= 10000
#       puts "yes"
#     else
#       puts "no"
#     end
#   else
#     puts "歩いた距離を0~20km、歩幅を30~100cmの範囲で入力してください"
#   end
# end

# puts "歩いた距離(0~20km)を入力してください"
# d = gets.to_i
# puts "歩幅(30~100cm)を入力してください"
# s = gets.to_i

# walking(d,s)

d, s = gets.split.map(&:to_i)

puts d * 1000 * 100 / s > 9999 ? 'yes' : 'no'

#入力例
#10 100 →yes

#入力例
#5 60 →no