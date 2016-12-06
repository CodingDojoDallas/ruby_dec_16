class TransactionError < StandardError
end

class BankAccount
	@@total_accounts = 0

	attr_reader :account_number, :checking, :savings

	def initialize
		@interest_rate = 1.5
		set_account_number
		@checking = 0.0
		@savings = 0.0
		@@total_accounts += 1
	end
	def check_balance(account)
		account.downcase!
		case account
		when 'checking'
			p @checking
		when 'savings'
			p @savings
		when 'total'
			p @checking + @savings
		end
	end
	def deposit(account, amount)
		account.downcase!
		case account
		when 'checking'
			@checking += amount
		when 'savings'
			@savings += amount
		end
	end
	def withdraw(account, amount)
		account.downcase!
		case account
		when 'checking'
			if @checking < amount
				raise TransactionError, 'insufficient funds'
			else
				@checking -= amount
			end
		when 'savings'
			if @savings < amount
				raise TransactionError, 'insufficient funds'
			else
				@savings -= amount
			end
		end
		amount
	end
	def account_information
		puts "Acct #: #{@account_number}"
		puts "Total : $#{@checking + @savings}"
		puts "Checking: $#{@checking}"
		puts "Savings: $#{@savings}"
		puts "Interest Rate: #{@interest_rate}%"
	end
	def self.total_accounts
		p @@total_accounts
	end

	private
		def set_account_number
			@account_number = ''
			(0...11).each {@account_number += rand(0...9).to_s}
		end
end

