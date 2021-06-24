# def police_trouble(a,b)
#   if a && b == true || a && b == false
#     puts "True"
#   else
#     puts "False"
#   end
# end

def police_trouble(a,b)
  if a && b  || !a && !b 
    puts "True"
  else
    puts "False"
  end
end

police_trouble(true, false)
police_trouble(false, false)
police_trouble(true, true)