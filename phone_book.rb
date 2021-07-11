# def phone_book(names)
  # a = ("ア".."オ").to_a
  # ka = ("カ".."ゴ").to_a
  # sa = ("サ".."ゾ").to_a
  # ta = ("タ".."ド").to_a
  # na = ("ナ".."ノ").to_a
  # ha = ("ハ".."ポ").to_a
  # ma = ("マ".."モ").to_a
  # ya = ("ヤ".."ヨ").to_a
  # ra = ("ラ".."ロ").to_a
  # wa = ("ワ".."ン").to_a
#   slice = names.slice(0).slice(0)
  
#   number_of_names = names.length - 1
#   count = 0
#   name_array = []
#   while count <= number_of_names
#     name = [names[count]]
#     name_array << name
#     count += 1
#   end
#   p name_array
#   #puts name_array

#   if ka.include?(slice)
#     puts "True"
#   else
#     puts "False"
#   end
# end

def phone_book(names)
  a = ("ア".."オ").to_a
  ka = ("カ".."ゴ").to_a
  sa = ("サ".."ゾ").to_a
  ta = ("タ".."ド").to_a
  na = ("ナ".."ノ").to_a
  ha = ("ハ".."ポ").to_a
  ma = ("マ".."モ").to_a
  ya = ("ヤ".."ヨ").to_a
  ra = ("ラ".."ロ").to_a
  wa = ("ワ".."ン").to_a


  num = 0
  number_of_names = names.length - 1
  array = []

  while num <= number_of_names
    first_character = names.slice(num).slice(0)
    if a.include?(first_character)
      array << ['ア', [names[num]]]
    elsif ka.include?(first_character)
      array << ['カ', [names[num]]]
    elsif sa.include?(first_character)
      array << ['サ', [names[num]]]
    elsif ta.include?(first_character)
      array << ['タ', [names[num]]]
    elsif na.include?(first_character)
      array << ['ナ', [names[num]]]
    elsif ha.include?(first_character)
      array << ['ハ', [names[num]]]
    elsif ma.include?(first_character)
      array << ['マ', [names[num]]]
    elsif ya.include?(first_character)
      array << ['ヤ', [names[num]]]
    elsif ra.include?(first_character)
      array << ['ラ', [names[num]]]
    elsif wa.include?(first_character)
      array << ['ワ', [names[num]]]
    end
    num += 1
  end
  p array
end

names = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
phone_book(names)

# # INPUT
# ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']

# # OUTPUT 
# [ ['ア', ['イトウ']], ['カ', ['カネダ', 'キシモト']], ['ハ', ['ハマダ', 'ババ']], ['ワ', ['ワダ']] ]

# p( {'a'=>1}.to_a )  # [["a", 1]]
# p ['array'].to_a    # ["array"]
# p nil.to_a          # []
#(1..10).each_slice(3) {|a| p a}
    # => [1, 2, 3]
    #    [4, 5, 6]
    #    [7, 8, 9]
    #    [10]