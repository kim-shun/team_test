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
  array = [['ア'],['カ'],['サ'],['タ'],['ナ'],['ハ'],['マ'],['ヤ'],['ラ'],['ワ']]

  while num <= number_of_names
    first_character = names.slice(num).slice(0)
    if a.include?(first_character)
      array[0].insert(1,[names[num]])
    elsif ka.include?(first_character)
      array[1].insert(1,[names[num]])
    elsif sa.include?(first_character)
      array[2].insert(1,[names[num]])
    elsif ta.include?(first_character)
      array[3].insert(1,[names[num]])
    elsif na.include?(first_character)
      array[4].insert(1,[names[num]])
    elsif ha.include?(first_character)
      array[5].insert(1,[names[num]])
    elsif ma.include?(first_character)
      array[6].insert(1,[names[num]])
    elsif ya.include?(first_character)
      array[7].insert(1,[names[num]])
    elsif ra.include?(first_character)
      array[8].insert(1,[names[num]])
    elsif wa.include?(first_character)
      array[9].insert(1,[names[num]])
    end
    num += 1
  end

  
  9.times do |count|
    if array[count].length < 2
      array[count].delete_at(0)
    end
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