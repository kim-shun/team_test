# def near_ten(num)
#   remainder = num % 10
#   if remainder <= 2 || remainder >= 8
#     puts "True"
#   else
#     puts "False"
#   end
# end

def near_ten(num)
  quotient = num % 10
  if quotient <= 2 || quotient >= 8
    puts "True"
  else
    puts "False"
  end
end

near_ten(12)
near_ten(17)
near_ten(19)