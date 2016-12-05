class BankAccount
	@@account_count = 0
	@interest_rate
	attr_reader :account_num, :savings_balance, :checkings_balance
	
	def initialize
		createAccountNum
		@savings_balance = 0
		@checkings_balance = 0
		@interest_rate = 0.05
		@@account_count += 1
		self
	end
	
	def deposit(account, amount)
		case account.downcase
		when "savings"
			puts "depositing $#{amount} into savings"
			@savings_balance += amount
		when "checkings"
			puts "depositing $#{amount} into checkings"
			@checkings_balance += amount
		else
			puts "invalid account type...try again."
		end
		
		self
	end
	
	def withdraw(account, amount)
		case account.downcase
		when "savings"			
			if amount > @savings_balance
				puts "insufficient funds in savings...try again"
			else
				puts "withdrawing $#{amount} into savings"
				@savings_balance -= amount
			end
		when "checkings"
			if amount > @checkings_balance
				puts "insufficient funds in checkings...try again"
			else
				puts "withdrawing $#{amount} into checkings"
				@checkings_balance -= amount
			end
		else
			puts "\ninvalid account type...try again."
		end
	end
	
	def balance(account)
		case account.downcase
		when "total"
			@savings_balance + @checkings_balance
		when "savings"
			@savings_balance
		when "checkings"
			@checkings_balance
		else
			puts "\ninvalid account type...try again."
		end
	end
	
	def displayAccountStats
		puts "\naccount_num: #{@account_num}"
		puts "account interest rate: #{@interest_rate}"
		puts "savings balance: $#{@savings_balance}"
		puts "checkings balance: $#{@checkings_balance}"
		puts "total balance: $#{@savings_balance + @checkings_balance}"
		self
	end
	
	private
	
		def createAccountNum
			@account_num = rand(1000000..9999999).round()
		end
end