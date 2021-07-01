# def close_far(a,b,c)
#   ab = (a - b).abs
#   ac = (a - c).abs
#   bc = (b - c).abs
#   if (ab == 1 || ac == 1) && bc >= 2
#     puts "True"
#   else
#     puts "False"
#   end
# end

def close_far(a,b,c)
  x = (a-b).abs
  y = (a-c).abs
  z = (b-c).abs

  if x == 1 && z >= 2
    puts "True"
  elsif y == 1 && z >= 2
    puts "True"
  else
    puts "False"
  end
end

close_far(1, 2, 10) #→ True
close_far(1, 2, 3) #→ False
close_far(4, 1, 3) #→ True