def binary_search(input, array)
  last = array.length - 1
  count = 0
  while count <= last
    if input == array[count]
      return count
    end
    count += 1
  end
  return -1
end

array=[1,3,5,6,9,10,13,20,26,31]
puts "検索したい数字を入力してください"
input = gets.to_i
result = binary_search(input, array)

if result == -1
  puts "#{input}は配列内に存在しません"
else
  puts "#{array[result]}は#{result}番目にあります"
end








# def binary_search(array, right, target)
#   left = 0
#   while left <= right
#     center = (left + right) / 2
#     if array[center] == target
#       return center
#     elsif array[center] < target
#       left = center + 1
#     else
#       right = center - 1
#     end
#   end
#   return -1 
# end

# array=[1,3,5,6,9,10,13,20,26,31]

# puts "検索したい数字を入力してください"
# target = gets.to_i
# number_of_elements = array.count

# result = binary_search(array, number_of_elements, target)

# if result == -1
#   puts "#{target}は配列内に存在しません"
# else
#   puts "#{target}は配列の#{result}番目に存在します "
# end