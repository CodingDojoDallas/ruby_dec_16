class BankAccount
	@@account_count = 0
	@interest_rate
	attr_reader :account_num
	attr_reader :savings_balance
	attr_reader :checkings_balance
	
	def initialize
		createAccountNum
		@savings_balance = 0
		@checkings_balance = 0
		@interest_rate = 0.05
		@@account_count += 1
		self
	end
	
	def deposit(account, amount)
		case account
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
		case account
		when "savings"
			puts "\nattempting to withdraw $#{amount} from savings"
			
			if amount > @savings_balance
				puts "insufficient funds in savings...try again"
			else
				puts "withdrawing $#{amount} into savings"
				@savings_balance -= amount
			end
		when "checkings"
			puts "\nattempting to withdraw $#{amount} from checkings"
			
			if amount > @checkings_balance
				puts "insufficient funds in checkings...try again"
			else
				puts "withdrawing $#{amount} into checkings"
				@checkings_balance -= amount
			end
		else
			puts "\ninvalid account type...try again."
		end
		
		self
	end
	
	def savingsBalance
		puts "savings balance: $#{@savings_balance}" 
		self
	end
	
	def checkingsBalance
		puts "checkings balance: $#{@checkings_balance}" 
		self
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

BankAccount.new.displayAccountStats
.withdraw("savings", 10).savingsBalance
.deposit("savings", 1000).savingsBalance
.deposit("checkings", 100).checkingsBalance
.withdraw("savings", 10).savingsBalance
.displayAccountStats