def fizz_buzz
  count = 1
  while count <= 100
    if count % 3 == 0 && count % 5 == 0
      puts "FizzBuzz"
    elsif count % 3 == 0
      puts "Fizz"
    elsif count % 5 == 0
      puts "Buzz"
    else
      puts count
    end
    count += 1
  end
end

fizz_buzz

# def fizz_buzz
#   num = 1
#   while num <= 100 do
#     if num % 15 == 0
#       puts "FizzBuzz"
#     elsif num % 3 == 0
#       puts "Fizz"
#     elsif num % 5 == 0
#       puts "Buzz"
#     else
#       puts num
#     end

#     num = num + 1
#   end
# end

# fizz_buzz