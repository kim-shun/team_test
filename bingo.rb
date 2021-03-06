puts "  B |  I |  N |  G |  O"

b = (1..15).to_a.sample(5)
i = (16..30).to_a.sample(5)
n = (31..45).to_a.sample(5)
g = (46..60).to_a.sample(5)
o = (61..75).to_a.sample(5)

5.times do |count|
  printf("%3d", b[count])
  print " |"

  print " #{i[count]} |"
  if count == 2
    print "    |"
  else
    print " #{n[count]} |"
  end
  print " #{g[count]} |"
  print " #{o[count]}  "
  puts "\n"
end


# def rand_b
#   b = rand(1..15)
#   if b <= 9
#     print "  #{b} |"
#   else
#     print " #{b} |"
#   end
# end

# def rand_i
#   i = rand(16..30)
#   print " #{i} |"
# end

# def rand_n
#   n = rand(31..45)
#   print " #{n} |"
# end

# def rand_g
#   g= rand(46..60)
#   print " #{g} |"
# end

# def rand_o
#   o = rand(61..75)
#   print " #{o} "
# end

# 5.times do |count|
#   rand_b
#   rand_i
#   if count == 2
#     print "    |"
#   else
#     rand_n
#   end
#   rand_g
#   rand_o
#   puts "\n"
# end

# 5.times do
#   print rand(1..15)
#   print rand(16..30)
#   print rand(31..45)
#   print rand(46..60)
#   print rand(1..75)
#   puts "\n"
# end

# bingo = (1..75).each_slice(15).map{|range| range.sample(5)}.transpose
# bingo[2][2] = ""

# puts "  B |  I |  N |  G |  O"
# bingo.map do |row|
#   puts row.map{|number| number.to_s.rjust(3)}.join(" |")
# end

#回答例
# class Bingo
#   def self.generate_card
#     b = (1..15).to_a.sample(5)        # 1..15からランダムに5つ選んで配列を作成
#     i = (16..30).to_a.sample(5)
#     n = (31..45).to_a.sample(5)
#     n[2] = ""                         # 真ん中をfreeに
#     g = (46..60).to_a.sample(5)
#     o = (61..75).to_a.sample(5)

#     card = " B |  I |  N |  G |  O\n"
#     5.times do |j|
#       [b,i,n,g,o].each do |column|
#         card += column[j].to_s.rjust(2) + " | "         # 一行ずつ連結
#       end
#       card[-3..-1]="\n"               # 右端の' | 'を改行に置換
#     end
#     return card
#   end
# end
