class BankAccount
  @@num_of_accts = 0

  private
  def gen_acct_num
    @acct_num = ''
    for i in 0..9
      @acct_num += rand(9).to_s
    end
  end

  public
  def initialize
    self.send(:gen_acct_num) # this allows us to access private methods
    @checkings = 0
    @savings = 0
    @interest = 0.001
    @@num_of_accts +=1
  end
  def show_acct_num
    puts "Your account nmber is #{@acct_num}."
  end

  def show_checkings
    puts "Your current checkings balance is.... $#{@checkings}"
  end

  def show_savings
    puts "Your current savings balance is... $#{@savings}"
  end

  def add_checkings val
    @checkings += val
  end

  def add_savings val
    @savings +=val
  end

  def withdraw_checkings val
    if val> @checkings
      puts "You have insufficient funds. You only have $#{@checkings} in your checkings."
    else
      @checkings -= val
    end
  end

  def totals
    total = @savings + @checkings
    puts "Your combined funds from savings and checkings is $#{total}."
  end

  def account_information
    self.show_acct_num
    self.totals
    self.show_checkings
    self.show_savings
    puts "Your interest rate is... #{@interest}."
  end


end

acct1 = BankAccount.new
acct1.account_information

acct1.add_checkings(30)
acct1.add_savings(50)
acct1.account_information

acct1.withdraw_checkings(20)
acct1.account_information
