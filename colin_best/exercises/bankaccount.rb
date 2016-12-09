class BankAccount
  attr_reader :account_number, :checking, :savings
  @account_counter = 0

  class << self
    attr_accessor :account_counter
  end

  def initialize
    set_account_number
    @checking = 5000
    @savings = 2500
    @interest_rate = 0.05
    self.class.account_counter += 1
  end

  def savingsAccountBalance
  		return "Your Savings Account balance is: #{@savings}"
  	end

  	def checkingAccountBalance
  		return "Your Checking Account balance is: #{@checking}"
  	end

    def display_total
      return "Your total amount is: #{@checking+@savings}"
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

  def withdraw (account, amount)
    account.downcase!
    case account
    when 'checking'
      if @checking < amount
        puts 'insufficient funds'
      else @checking -= amount
      end 
    when 'savings'
      if @savings < amount
        puts 'insufficient funds'
      else @savings -= amount
      end
    end
  end

  def account_information
    puts "Your account number is: #{@account_number}"
		puts "Total balance is: #{(@checking + @savings) + ((@checking+@savings)) * @interest_rate}"
		puts "Your Checking Account balance is: #{@checking + (@checking * @interest_rate)}"
		puts "Your Savings Account balance is: #{@savings + (@savings * @interest_rate)}"
		puts "The interest rate is: #{@interest_rate}"
  end

  private
    def set_account_number
      @account_number = ''
      (0...11).each {@account_number += rand(0...9).to_s}
    end
end
