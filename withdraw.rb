# def withdraw(balance, amount)
#   fee = 110
#   amount_fee = amount + fee
#   if amount_fee <= balance
#     balance -= amount_fee
#     puts "#{amount}円引き落としました。残高は#{balance}円です"
#   else
#     puts "残高不足です"
#   end
# end

def withdraw(balance, amount)
  fee = 110
  if balance >= (amount + fee)
    balance -= (amount + fee)
    puts "#{amount}円引き落としました。残高は#{balance}円です"
  else
    puts "残高不足です"
  end
end

balance = 100000
puts "いくら引き落としますか？（手数料110円かかります）"
amount = gets.to_i
withdraw(balance, amount)