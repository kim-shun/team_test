# def extra_end(str)
#   end_2 = str.slice!(-2,2)
#   3.times do
#     puts end_2
#   end
# end

# def extra_end(str)
#   end_2 = str.slice!(-2,2)
#     puts end_2 * 3
# end

def extra_end(str)
  char_num = str.length
  right2 = str.slice(char_num - 2, 2)
  puts right2 * 3
end

# 呼び出し例
extra_end('Hello')
extra_end('ab')
extra_end('Hi')