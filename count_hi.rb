def count_hi(str)
  puts str.scan("hi").length
end

# 呼び出し例（引数には対象となる文字列を指定します）
count_hi('abc hi ho')
count_hi('ABChi hi')
count_hi('hihi')