#select 配列 偶数を返す

list = [1,2,3,4,5]
list = list.select { |num| num.even? }

p list #=> [2, 4]


#select ハッシュ 偶数を返す

hash = { "a" => 1, "b" => 2, "c" => 3 }
hash = hash.select {|k,v| v.even? }  

p hash #{"b"=>2}


#selectには破壊的メソッドselect!も用意されています。
#破壊的メソッドはオブジェクトそのものを変更するものなのでlist=で代入する必要がなくなります。


list = [1,2,3,4,5]
list.select! { |num| num.even? }

p list #=> [2, 4]

hash = { "a" => 1, "b" => 2, "c" => 3 }
hash.select! {|k,v| v.even? }  

p hash #{"b"=>2}





list =  ["tokorozawa", "yamada", "oyama", "yazawa"]

list.select! { |x|
  x.include?("zawa")
}
p list
#=> ["tokorozawa", "yazawa"]

list = [1,2,3,4,5]
list.select! { |num| num > 3 }

p list #=> [4, 5]