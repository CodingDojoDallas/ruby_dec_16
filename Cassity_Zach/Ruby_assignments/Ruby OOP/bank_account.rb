class BankAccount
  attr_accessor :account_num, :checkbal, :savingsbal
  @account_counter = 0

  class << self
    attr_accessor :account_counter
  end

  def initialize
    createAccountNumber #I have no clue if this is right...
    @checkbal = 0
    @savebal = 0
    @intrest_rate = 0.5
    self.class.account_counter += 1
  end

  private
  def createAccountNumber
    @account_num = 10.times.map{Random.rand(0..9) }.join
  end
  public
  def display_account_amount
    puts "The amount of accounts with the bank is #{self.class.account_counter}"
  end
  def displayAccountNumber
    puts "Your account number is: #{@account_num}"
    self
  end
  def check_bal
    puts "Your checking balance is $#{@checkbal}"
    self
  end
  def save_bal
    puts"Your savings balance is $#{@savebal}"
    self
  end
  def deposit
    print "Would you like to deposit money to checking or savings? "
    choice = gets.chomp
    if choice == "checking"
      print "How much would you like to deposit into checking? "
      num = gets.chomp
      @checkbal += num.to_i
    elsif choice == "savings"
      print "How much would you like to deposit into savings? "
      num = gets.chomp
      @savebal += num.to_i
    end
    self
  end
  def withdraw
    print "Would you like to withdraw money from checking or savings?"
    choice = gets.chomp
    if choice == "checking"
      print "How much would you like to withdraw? "
      num = gets.chomp
      if num.to_i > @checkbal
        print "You are broke bruh!"
      else
        @checkbal -= num.to_i
      end
    elsif choice == "savings"
      print "How much would you like to withdraw? "
      num = gets.chomp
      if num.to_i > @savebal
        puts "You are broke bruh!"
      else
        @savebal -= num.to_i
      end
    end
    self
  end
  def total
    totalnum = @checkbal += @savebal
    puts "The total amount of money across accounts is $#{totalnum}"
    self
  end
  def account_info #this needs to be private but i cant figure it out D:
    self
  end
end
broke = BankAccount.new
broke.display_account_amount
