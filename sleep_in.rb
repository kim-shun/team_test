# def sleep_in(weekday, vacation)
#   if weekday
#     puts "False"
#   else
#     puts "True"
#   end
# end

def sleep_in(is_weekday, is_vacation)
  if is_weekday != true || is_vacation == true
    puts "True"
  else
    puts "False"
  end
end

sleep_in(false, false)
sleep_in(true, false)
sleep_in(false, true)