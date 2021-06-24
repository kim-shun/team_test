# def parrot_trouble(talking, hour)
#   if hour >= 7 && hour <= 20
#     puts "OK"
#   elsif talking == false
#     puts "OK"
#   else
#     puts "NG"
#   end
# end

def parrot_trouble(talking, hour)
  if talking && (hour < 7 || hour >=20)
    puts "NG"
  else
    puts "OK"
  end
end



parrot_trouble(true, 6) 
parrot_trouble(true, 7)
parrot_trouble(false, 6)
parrot_trouble(false, 7)