def count_evens(nums)
  even = []
  nums.each do |num|
    if num.even?
      even << num
    end
  end
  puts even.length
end

# def count_evens(nums)
#   count = 0
#   nums.each do |num|
#     if num.even?
#       count += 1
#     end     
#   end
#   puts count
# end

count_evens([2, 1, 7, 8, 2, 3, 4])
count_evens([2, 2, 6, 5, 0]) 
count_evens([1, 3, 11, 5])