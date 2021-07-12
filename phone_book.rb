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

  kana = [a, ka, sa, ta, na, ha, ma, ya, ra, wa]
  kana_row = 'アカサタナハマヤラワ'.chars.map{|c| [c,[]]}

  num = 0
  number_of_names = names.length - 1
  names_array = []
  
  while num <= number_of_names
    first_character = names.slice(num).slice(0)
    kana.map{|row|
      if row.include?(first_character)
        count = 0
        while count <= 9
          if row == kana[count]
            kana_row[count][1].insert(0,names[num])
          end
          count += 1
        end
      end
    }
    num += 1
  end

  kana_row.map{ |row_content|
    if row_content[1][0] != nil
      row_content[1].sort!
      names_array << row_content
    end
  }
  
  p names_array
  
end

names = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
phone_book(names)
#実行結果 [["ア", ["イトウ"]], ["カ", ["カネダ", "キシモト"]], ["ハ", ["ハマダ", "ババ"]], ["ワ", ["ワダ"]]]

names = ['フクダ', 'キムラ', 'タナカ', 'ハシモト', 'オカモト', 'ゴトウ']
phone_book(names)
# 実行結果 [["ア", ["オカモト"]], ["カ", ["キムラ", "ゴトウ"]], ["タ", ["タナカ"]], ["ハ", ["ハシモト", "フクダ"]]]

names = ['ワタナベ', 'ヨシダ', 'マツモト', 'ナガタ', 'ドウモト','タチバナ', 'チバ']
phone_book(names)
# 実行結果 [["タ", ["タチバナ", "チバ", "ドウモト"]], ["ナ", ["ナガタ"]], ["マ", ["マツモト"]], ["ヤ", ["ヨシダ"]], ["ワ", ["ワタナベ"]]]















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

#   a_row = ['ア', []]
#   ka_row = ['カ', []]
#   sa_row = ['サ', []]
#   ta_row = ['タ', []]
#   na_row = ['ナ', []]
#   ha_row = ['ハ', []]
#   ma_row = ['マ', []]
#   ya_row = ['ヤ', []]
#   ra_row = ['ラ', []]
#   wa_row = ['ワ', []]

#   num = 0
#   number_of_names = names.length - 1
#   names_array = []

#   while num <= number_of_names
#     first_character = names.slice(num).slice(0)
#     [a, ka, sa, ta, na, ha, ma, ya, ra, wa].map{|row|
#       if row.include?(first_character)
#         if row == a
#          a_row[1].insert(0,names[num])
#         elsif row == ka
#           ka_row[1].insert(0,names[num])
#         elsif row == sa
#           sa_row[1].insert(0,names[num])
#         elsif row == ta
#           ta_row[1].insert(0,names[num])
#         elsif row == na
#           na_row[1].insert(0,names[num])
#         elsif row == ha
#           ha_row[1].insert(0,names[num])
#         elsif row == ma
#           ma_row[1].insert(0,names[num])
#         elsif row == ya
#           ya_row[1].insert(0,names[num])
#         elsif row == ra
#           ra_row[1].insert(0,names[num])
#         elsif row == wa
#           wa_row[1].insert(0,names[num])
#         end
#       end
#     }
#     num += 1
#   end

#   [a_row, ka_row, sa_row, ta_row, na_row, ha_row, ma_row, ya_row, ra_row, wa_row].map{ |row_content|
#     if row_content[1][0] != nil
#       row_content[1].sort!
#       names_array << row_content
#     end
#   }
  
#   p names_array
  
# end

# names = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
# phone_book(names)
# #実行結果 [["ア", ["イトウ"]], ["カ", ["カネダ", "キシモト"]], ["ハ", ["ハマダ", "ババ"]], ["ワ", ["ワダ"]]]

# names = ['フクダ', 'キムラ', 'タナカ', 'ハシモト', 'オカモト', 'ゴトウ']
# phone_book(names)
# # 実行結果 [["ア", ["オカモト"]], ["カ", ["キムラ", "ゴトウ"]], ["タ", ["タナカ"]], ["ハ", ["ハシモト", "フクダ"]]]

# names = ['ワタナベ', 'ヨシダ', 'マツモト', 'ナガタ', 'ドウモト','タチバナ', 'チバ']
# phone_book(names)
# # 実行結果 [["タ", ["タチバナ", "チバ", "ドウモト"]], ["ナ", ["ナガタ"]], ["マ", ["マツモト"]], ["ヤ", ["ヨシダ"]], ["ワ", ["ワタナベ"]]]


#   a = ("ア".."オ").to_a
#   kana_array << a
#   ka = ("カ".."ゴ").to_a
#   kana_array << ka
#   sa = ("サ".."ゾ").to_a
#   kana_array << sa
#   ta = ("タ".."ド").to_a
#   kana_array << ta
#   na = ("ナ".."ノ").to_a
#   kana_array << na
#   ha = ("ハ".."ポ").to_a
#   kana_array << ha
#   ma = ("マ".."モ").to_a
#   kana_array << ma
#   ya = ("ヤ".."ヨ").to_a
#   kana_array << ya
#   ra = ("ラ".."ロ").to_a
#   kana_array << ra
#   wa = ("ワ".."ン").to_a
#   kana_array << wa



# def phone_book(names)
#   #kana_array = []
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
  
#   # [a, ka, sa, ta, na, ha, ma, ya, ra, wa].map{|i|
#   #   kana_array << i
#   # }

#   kana_row = [["ア"], ["カ"], ["サ"], ["タ"], ["ナ"], ["ハ"], ["マ"], ["ヤ"], ["ラ"], ["ワ"]]

#   num = 0
#   number_of_names = names.length - 1
#   array = []
#   names.sort!

#   while num <= number_of_names
#     first_character = names.slice(num).slice(0)
#     count = 0
#     [a, ka, sa, ta, na, ha, ma, ya, ra, wa].map{|i|
#       if i.include?(first_character)
#         array << kana_row[count]
#         kana_row[count].insert(1,[names[num]])
#       end
#       count += 1
#     }
#     # count = 0
#     # while count <= number_of_names
#     #   if kana_array[count].include?(first_character)
#     #     array << kana_row[count]
#     #     kana_row[count].insert(1,[names[num]])
#     #   end
#     #   count += 1
#     # end
#     num += 1
#   end

#   p array
  
# end

# names = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ']
# phone_book(names)
# #実行結果 [["ア", ["イトウ"]], ["カ", ["キシモト"], ["カネダ"]], ["カ", ["キシモト"], ["カネダ"]], ["ハ", ["ババ"], ["ハマダ"]], ["ハ", ["ババ"], ["ハマダ"]]]

# names = ['フクダ', 'キムラ', 'タナカ', 'ハシモト', 'オカモト', 'ゴトウ']
# phone_book(names)
# # 実行結果 [["ア", ["オカモト"]], ["カ", ["ゴトウ"], ["キムラ"]], ["カ", ["ゴトウ"], ["キムラ"]], ["タ", ["タナカ"]], ["ハ", ["フクダ"], ["ハシモト"]], ["ハ", ["フクダ"], ["ハシモト"]]]
# names = ['ワタナベ', 'ヨシダ', 'マツモト', 'ナガタ', 'ドウモト','タチバナ', 'チバ']
# phone_book(names)
# 実行結果 [["タ", ["ドウモト"], ["チバ"], ["タチバナ"]], ["タ", ["ドウモト"], ["チバ"], ["タチバナ"]], ["タ", ["ドウモト"], ["チバ"], ["タチバナ"]], ["ナ", ["ナガタ"]], ["マ", ["マツモト"]]]




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

# def name_index names
#   katakana = [
#     [*'ア'..'オ']<<'ヴ',          # カタカナを行ごとに格納
#     [*'カ'..'ゴ'],
#     [*'サ'..'ゾ'],
#     [*'タ'..'ド'],
#     [*'ナ'..'ノ'],
#     [*'ハ'..'ポ'],
#     [*'マ'..'モ'],
#     [*'ヤ'..'ヨ'],
#     [*'ラ'..'ロ'],
#     [*'ワ'..'ン']
#   ]

#   names.sort!                     # 名前の配列を辞書順にソート
#   index=[]
#   katakana.each do |gyou|         # 行ごとに名前の先頭がその行に含まれるかを判定
#     names.each do |name|
#       if gyou.include?(name[0])   # 含まれていた場合は、indexに追加
#         if index.empty? || index[-1][0]!=gyou[0]    # 見出しが既に作られているかどうかを判定
#           index << [gyou[0],[]]
#         end
#           index[-1][1]<<name
#       end
#     end
#   end
#   return index
# end

# names = ['キシモト', 'イトウ', 'ババ', 'カネダ', 'ワダ', 'ハマダ','ゴンダ','ドウモト','ヴィクトル']
# p name_index names
# => [["ア", ["イトウ", "ヴィクトル"]], ["カ", ["カネダ", "キシモト", "ゴンダ"]], ["タ", ["ドウモト"]], ["ハ", ["ハマダ", "ババ"]], ["ワ", ["ワダ"]]]