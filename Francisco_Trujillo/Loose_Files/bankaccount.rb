class BankAccount
	
	attr_reader :account_number, :checking, :savings, :banknum, :interest
	@@banknum = 0
	class << self
		attr_accessor :banknum
	end
	def initialize
		generate_account_n
		@checking=0.0
		@savings=0.0
		@total =@checking + @savings
		self.class.banknum+=1
		@interest = 1.7
	end

	def checkbalance
		p @account_number
		p @checking
		p @savings
		p @total
	end
	def deposit(account, amount)
		account.downcase!
		case account
		when 'checking'
			@checking+=amount
		when'savings'
			@savings+=amount
		end
		self
	end
	def withdraw(account, amount)
	account.downcase!
	case account
	when 'checking'
		if amount > @checking
			puts "insufficient funds"
			else
			@checking-=amount
		end
	when'savings'
		if amount > @savings
			puts "insufficient funds"
			else
			@savings-=amount
		end
	end
	self
	end
	def account_information
	puts "Account #: 		#{@account_number}"
		puts "Total balance: 		$#{@total}"
		puts "Checking Balance:	$#{@checking}"
		puts "Savings Balance: 	$#{@savings}"
		puts "Interest Rate:		%#{@interest}"
		self
	end
	private
		def generate_account_n
			@account_number = ((1..10).map{ rand(0..9).to_s}).join
		end

end

fjt= BankAccount.new
fjt.deposit('savings',100).withdraw('savings',99).account_information
puts fjt.banknum
