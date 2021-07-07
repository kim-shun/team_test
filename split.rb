#文字列を分割して配列にするためのメソッド

str = "Hello World"
array = str.split
p array
#実行結果
#["Hello", "World"]

# puts array
# 実行結果
# Hello
# World

str = "HelloWorld"
array = str.split("")
p array
# 実行結果
# ["H", "e", "l", "l", "o", "W", "o", "r", "l", "d"]

str = "HelloWorld"
array = str.split("W")
p array
# 実行結果
#["Hello", "orld"]

str = "HelloWorld"
array = str.split("", 3)
p array
# 実行結果
#["H", "e", "lloWorld"]
# 第2引数に3を指定したので配列の要素数は3つになる

str = "HelloWorld"
array = str.split("", 3)
p array[1]
# 実行結果
#"e"