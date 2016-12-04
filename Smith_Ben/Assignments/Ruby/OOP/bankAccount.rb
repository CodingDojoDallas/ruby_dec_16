

class BankAccount
	@@num_of_accounts = 0
	def initialize
		@checking = 0
		@savings = 0
		@interest = 0.05
		@@num_of_accounts += 1
		generate_account_number
		puts "Number of Accounts: #{@@num_of_accounts}"
		self
	end

	def show_account_number
		puts @account_number
		self
	end

	def checking_balance
		puts "Checking Balance: $#{@checking}"
		self
	end

	def savings_balance
		puts "Savings Balance: $#{@savings}"
		self
	end

	def deposit val,acct
		if acct == 'checking' then @checking += val
		elsif acct == 'savings' then @savings += val
		else puts "Please deposit into either checking or savings" end
		self
	end

	def withdraw val, acct
		if acct == 'checking'
			if val < @checking
				@checking -= val
			else
				puts "Insufficient Funds"
			end
		elsif acct == 'savings'
			if val < @savings
				@savings -= val
			else
				puts "Insufficient Funds"
			end
		end
	end

	def show_funds
		puts "Total amount in Bank Account:" + (@checking + @savings).to_s
	end

	def account_information
		puts "Account Number: #{@account_number}"
		puts "Total Amount of Money: #{@checking + @savings}"
		puts "Checking Balance: #{@checking}"
		puts "Savings Balance: #{@savings}"
		puts "Interest Rate: #{@interest}"		
	end

	private

		def generate_account_number
			@account_number = 16.times.map { rand 10 }.join
			self
		end
end

Ben = BankAccount.new
Ben.deposit(101, 'savings').savings_balance
Ben.deposit(10031, 'checking').checking_balance
Ben.account_information





