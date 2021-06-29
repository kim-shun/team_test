# def search(num_target, input)
#   input.each_with_index do |num, i|
#     if num_target == num
#       puts "#{num}は#{i+1}番目にあります"
#       return
#     end
#   end
#   puts "その数は配列に含まれていません"
# end


# input = [2, 6, 7, 14, 15, 21, 29, 38, 42, 51, 60, 78, 81, 84, 95, 102]
# search(13, input)

def search(target, input)
  input.each_with_index do |num, i|
    if target == num 
      puts "#{target}は#{i+1}番目にあります"
      return
    end
  end
  puts "その数は配列に含まれていません" 
end

input = [2, 6, 7, 14, 15, 21, 29, 38, 42, 51, 60, 78, 81, 84, 95, 102]
puts "整数を入力してください"
target = gets.to_i
search(target, input)



# def search(target_num, input)

#   input.each_with_index do |num, index|
#     if num == target_num
#       puts "#{index + 1}番目にあります"
#       return
#     end
#   end
#   puts "その数は含まれていません"
# end

# input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
# search(11, input)
