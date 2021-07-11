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

# def phone_book(names)
#   a = ("ア".."オ").to_a
#   ka = ("カ".."ゴ").to_a
#   sa = ("サ".."ゾ").to_a
#   ta = ("タ".."ド").to_a
#   na = ("ナ".."ノ").to_a
#   ha = ("ハ".."ポ").to_a
#   ma = ("マ".."モ").to_a
#   ya = ("ヤ".."ヨ").to_a
#   ra = ("ラ".."ロ").to_a
#   wa = ("ワ".."ン").to_a

#   num = 0
#   number_of_names = names.length - 1
#   array = [['ア'],['カ'],['サ'],['タ'],['ナ'],['ハ'],['マ'],['ヤ'],['ラ'],['ワ']]
  
#   while num <= number_of_names
#     first_character = names.slice(num).slice(0)
#     if a.include?(first_character)
#       array[0].insert(1,[names[num]])
#     elsif ka.include?(first_character)
#       array[1].insert(1,[names[num]])
#     elsif sa.include?(first_character)
#       array[2].insert(1,[names[num]])
#     elsif ta.include?(first_character)
#       array[3].insert(1,[names[num]])
#     elsif na.include?(first_character)
#       array[4].insert(1,[names[num]])
#     elsif ha.include?(first_character)
#       array[5].insert(1,[names[num]])
#     elsif ma.include?(first_character)
#       array[6].insert(1,[names[num]])
#     elsif ya.include?(first_character)
#       array[7].insert(1,[names[num]])
#     elsif ra.include?(first_character)
#       array[8].insert(1,[names[num]])
#     elsif wa.include?(first_character)
#       array[9].insert(1,[names[num]])
#     end
#     num += 1
#   end
    
#   9.times do |count|
#     array.delete_if{|i| i.length < 2}
#   end
#   p array
#   p array[1]
# end

# names = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
# phone_book(names)

# names = ['フクダ', 'キムラ', 'タナカ', 'ハシモト', 'オカモト', 'ゴトウ']
# phone_book(names)

# names = ["さくら", "うめ", "オオシマ"]
# phone_book(names)


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

    # kana_row = a
    # puts a
    # kana_row = ka
    # puts kana_row

#模範解答

def name_index names
  katakana = [
    [*'ア'..'オ']<<'ヴ',          # カタカナを行ごとに格納
    [*'カ'..'ゴ'],
    [*'サ'..'ゾ'],
    [*'タ'..'ド'],
    [*'ナ'..'ノ'],
    [*'ハ'..'ポ'],
    [*'マ'..'モ'],
    [*'ヤ'..'ヨ'],
    [*'ラ'..'ロ'],
    [*'ワ'..'ン']
  ]

  names.sort!                     # 名前の配列を辞書順にソート
  index=[]
  katakana.each do |gyou|         # 行ごとに名前の先頭がその行に含まれるかを判定
    names.each do |name|
      if gyou.include?(name[0])   # 含まれていた場合は、indexに追加
        if index.empty? || index[-1][0]!=gyou[0]    # 見出しが既に作られているかどうかを判定
          index << [gyou[0],[]]
        end
          index[-1][1]<<name
      end
    end
  end
  return index
end

names = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ','ゴンダ','ドウモト','ヴィクトル']
p name_index names
# => [["ア", ["イトウ", "ヴィクトル"]], ["カ", ["カネダ", "キシモト", "ゴンダ"]], ["タ", ["ドウモト"]], ["ハ", ["ハマダ", "ババ"]], ["ワ", ["ワダ"]]]