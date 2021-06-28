# def lone_sum(ary)
#   nums = []
#   if ary[0] == ary[1] && ary[1] == ary[2] && ary[0] == ary[2]
#     puts 0
#   elsif ary[0] == ary[1]
#     puts ary[2]
#   elsif ary[1] == ary[2]
#     puts ary[0]
#   elsif ary[0] == ary[2]
#     puts ary[1]
#   else
#     puts ary.sum
#   end
# end

# lone_sum([1, 2, 3]) #→ 6
# lone_sum([3, 2, 3]) #→ 2
# lone_sum([3, 3, 3]) #→ 0





# def lone_sum(ary)
#   ary.each do |num|
#     puts num
#   end
# end

# lone_sum([1, 2, 3])
#↑実行結果：123





# def lone_sum(ary)
#   ary.each do |num|
#     ary.each do |i|
#       puts i
#     end
#   end
# end

# lone_sum([1, 2, 3])
#↑実行結果：123123123





# def lone_sum(ary)
#   uniq_nums = []
#   ary.each do |num|
#     count = 0
#     ary.each do |i|
#       if num == i
#         count += 1
#         puts count
#       end
#     end
#   end
# end

# lone_sum([1, 2, 3]) #実行結果111
# lone_sum([3, 2, 3]) #実行結果12112
# lone_sum([3, 3, 3])  #実行結果123123123





# def lone_sum(ary)
#   uniq_nums = []
#   ary.each do |num|
#     count = 0
#     ary.each do |i|
#       if num == i
#         count += 1
#       end
#     end
#     puts count
#   end
# end

# lone_sum([1, 2, 3]) #実行結果111
# lone_sum([3, 2, 3]) #実行結果212
# lone_sum([3, 3, 3])  #実行結果333






def lone_sum(ary)
  uniq_nums = []
  ary.each do |num|
    count = 0
    ary.each do |i|
      if num == i
        count += 1
      end
    end
    if count < 2
      uniq_nums << num
    end
  end

  sum = 0
  uniq_nums.each do |uniq_num|
    sum += uniq_num
  end
  puts sum
end

lone_sum([1, 2, 3]) #→ 6
lone_sum([3, 2, 3]) #→ 2
lone_sum([3, 3, 3]) #→ 0