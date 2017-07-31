class Account

	attr_accessor :balance
	def initialize balance
		@balance = balance
		
	end
	
	def deposit amount
		@balance += amount
	end

	def withdrawl amount
		@balance -= amount
	end



end