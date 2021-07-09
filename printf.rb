#左詰め
printf("%-10s %s", "hello", "world"); #hello      world
puts "\n"
#右詰め
printf("%10s %s", "hello", "world"); #     hello world
puts "\n"

# printfは以下のような形式で入力します。
# printf( "フォーマット", 表示させたい値 )
printf('僕の名前は %s %d 歳です', '太郎', 30)

# 実行結果
#僕の名前は 太郎 30 歳です


puts "\n"


#pメソッドは型情報を一緒に出力します。
p '明日の降水確率は'
p 50
p '%です'

# 実行結果
# '明日の降水確率は'
# 50
# '%です'

