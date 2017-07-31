require_relative 'account.rb'

# create new account with starting balance of 100
account = Account.new 100


while true

  puts "Your balance is #{account.balance}"
  puts "Choose an option 1) make a deposit, 2) make a withdrawl"

  option = gets.chomp.to_i

  case option

    when 1

      puts "how much would you like to deposit?"
      deposit = gets.chomp.to_i

      account.deposit deposit

    when 2

      puts "how much would you like to withdraw?"
      withdrawl = gets.chomp.to_i

      account.withdrawl withdrawl
      

    end

end