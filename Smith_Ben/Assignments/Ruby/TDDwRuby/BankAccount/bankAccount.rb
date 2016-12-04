

class BankAccount
	attr_accessor :account_number, :checking, :savings
	@@num_of_accounts = 0
	def initialize
		@checking = 1500
		@savings = 5000
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
		"Checking Balance: $#{@checking}"
	end

	def savings_balance
		puts "Savings Balance: $#{@savings}"
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
				return @checking -= val
			else
				return "Insufficient Funds"
			end
		elsif acct == 'savings'
			if val < @savings
				return @savings -= val
			else
				return "Insufficient Funds"
			end
		end
	end

	def show_funds
		"Total amount in Bank Account: " + (@checking + @savings).to_s
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






