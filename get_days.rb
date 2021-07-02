# def get_days(year, month)
#   month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
#   if month == 2
#     if year % 4 == 0
#       if year % 100 == 0 && year % 400 == 0
#         days = 29
#       else
#         days = month_days[1]
#       end
#     else
#       days = month_days[1]
#     end
#   else
#     days = month_days[month - 1]
#   end
#   puts "#{year}年#{month}月は#{days}日間あります"
# end

# days = get_days(1990,2)
# days = get_days(2000,2)
# days = get_days(2100,2)
# days = get_days(2000,3)
# days = get_days(2021,7)
# days = get_days(2021,8)
# days = get_days(2021,6)


def get_days(year, month)
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if month == 2
    if year % 4 == 0
      if year % 100 == 0 && year % 400 != 0
        days = 28
      else
        days = 29
      end
    else
      days = 28
    end
  else
    days = month_days[month - 1]
  end

  return days
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"