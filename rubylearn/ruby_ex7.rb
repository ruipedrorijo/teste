require 'C:\Users\Rui Rijo\teste\rubylearn\BankAcc'
class NewBankAccount < BankAccount

   def customerPhone
        @customerPhone
   end

   def customerPhone=( value )
        @customerPhone = value
   end

end
account = NewBankAccount.new()

account.accountNumber = "54321"     
account.accountName = "Fred Flintstone"

puts account.accountNumber
puts account.accountName
puts account.interest_rate
puts account.calc_interest (1000)

account.customerPhone = 910000000
puts account.customerPhone