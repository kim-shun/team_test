def sum_matrix
  num = (0..99).to_a
  input = []
  5.times do
    row = num.sample(4)
    row_sum = row.sum
    input << row
    row.insert(4,row_sum)
  end

  col_sum = []
  5.times do |count|
    col_sum << input[0][count] + input[1][count] + input[2][count] + input[3][count]
  end
  input << col_sum

  6.times do |count|
    5.times do |num|
      printf("%4d", input[count][num])
      print "|"
    end
    puts "\n"
  end
end

sum_matrix



# input = [
#   [9, 85, 92, 20],
#   [68, 25, 80, 55],
#   [43, 96, 71, 73],
#   [43, 19, 20, 87],
#   [95, 66, 73, 62]
# ]
# expected = [
#   [9, 85, 92, 20, 206],
#   [68, 25, 80, 55, 228],
#   [43, 96, 71, 73, 283],
#   [43, 19, 20, 87, 169],
#   [95, 66, 73, 62, 296],
#   [258, 291, 336, 297, 1182]
# ]

# 実行例
#   9|  75|  83|  74| 241
#   0|  27|  32|  48| 107
#  51|  66|  76|   3| 196
#   2|  37|  69|  85| 193
#  55|  40|  25|  88| 208
# 117| 245| 285| 298| 945