class BankAccount
  @@acct_index = 0
  attr_reader :acct_number, :checking, :savings
  def initialize
    @@acct_index += 1
    @checking = 0
    @savings = 0
    acct_number
    @interest = '3.23%'
  end

  def withdrawl(acct, val)
    if acct == 'checking'
      if val > @checking
        puts "Insufficient Funds"
      else
        @checking -= val
      end
    else
      if num > @savings
        puts "Insufficient Funds"
      else 
        @savings -= val
      end
    end
    self
  end

  def view_checking
    puts @checking
  end

  def view_savings
    puts @savings
  end

  def deposit(acct, val)
    if acct == 'checking'
      @checking += val
    else
      @savings += val
    end
    self
  end

  def acct_info
    puts "Account Number: #{@acct_number}"
    puts "Total Balance: #{@checking + @savings}"
    puts "Checking: #{@checking}"
    puts "Savings: #{@savings}"
    puts "Interest Rate: #{@interest}"
  end

  private
  attr_reader :interest
  def acct_number
    @acct_number = rand(1..10000000)
  end
end

colby = BankAccount.new
colby.deposit('checking', 1300)
colby.deposit('savings', 1200)
colby.acct_info