# hash = {name: "佐藤", age: 25, address: "東京"}

# puts hash.keys
# puts hash.values
# puts hash[:name]
# hash[:like_color] = "黄"
# puts hash.values

users = [
  {user: {profile: {name: '佐藤', age: 22}}},
  {user: {profile: {name: '鈴木', age: 30}}},
  {user: {profile: {name: '田中', age: 40}}},
 ]

 
 users.each do |u|
  puts u[:user][:profile][:age]
 end

 users.each do |u|
  puts u[:user][:profile][:age]
 end

 users.each do |u|
  puts u.dig(:user, :profile, :name)
 end

 users.each{|u| puts u.dig(:user, :profile, :name)}