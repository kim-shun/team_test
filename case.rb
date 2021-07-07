sum = 0
product = "Apple"

case product
when "Melon" then
  sum = sum + 500
when "Apple" then
  sum = sum + 150
end

print("料金は", sum, "です")

puts "\n"

sum = 0
product = "Apple"

case product
when "Melon","Banana" then
  sum = sum + 500
when "Apple","Lemon","Orange" then
  sum = sum + 150
end

print("料金は", sum, "です")
