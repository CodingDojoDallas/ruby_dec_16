class BankAccount
	private
	attr_accessor :account_number, :checking_balance, :savings_balance

	@@number_accounts = 0
	@@interest_rate = 3.25

	def initialize
		@account_number = rand.to_s[2..18]
		@checking_balance = 0
		@savings_balance = 0
		@@number_accounts += 1
	end
	public
	def display_account
		puts "Your account number is #{@account_number}"
		# self
	end
	def display_checking_balance
		p "Your checking account has $#{@checking_balance}"
		# self
	end
	def display_savings_balance
		p "Your savings account has $#{@savings_balance}"
		# self
	end
	def display_total_balance
		p "Your total accounts balance is $#{@savings_balance + @checking_balance}"
		# self
	end
	def display_interest_rate
		p "Your interest rate is #{@@interest_rate}%"
		# self
	end
	def account_information
		self.display_account
		self.display_total_balance
		self.display_checking_balance
		self.display_savings_balance
		self.display_interest_rate
	end
	def deposit_money(account, amount)
		if account == "checking"
			@checking_balance += amount
		else
			@savings_balance += amount
		end
		# self
	end
	def withdraw_money(account, amount)
		if account == "checking"
			if amount > @checking_balance
				p "You have insufficient funds in your checking account"
			else
				@checking_balance -= amount
			end
		else
			if amount > @savings_balance
				p "You have insufficient funds in your savings account"
			else
				@savings_balance -= amount
			end
		end
		# self
	end
end
