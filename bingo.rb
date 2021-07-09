puts "  B |  I |  N |  G |  O"

def rand_b
  b = rand(1..15)
  if b <= 9
    print "  #{b} |"
  else
    print " #{b} |"
  end
end

def rand_i
  i = rand(16..30)
  print " #{i} |"
end

def rand_n
  n = rand(31..45)
  print " #{n} |"
end

def rand_g
  g= rand(46..60)
  print " #{g} |"
end

def rand_o
  o = rand(61..75)
  print " #{o} "
end

5.times do |count|
  rand_b
  rand_i
  if count == 2
    print "    |"
  else
    rand_n
  end
  rand_g
  rand_o
  puts "\n"
end
