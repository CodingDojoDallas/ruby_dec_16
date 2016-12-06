#we are going to have to include our Project class in our spec file
require_relative 'bank_account'
#now we can start Rspec
#this line enacts the Rspec library and calls the describe method that takes in the class Project, when doing so it expects to do something
RSpec.describe BankAccount do

  it 'has a method for retrieving the checking account balance' do
    bank_account = BankAccount.new
    bank_account.Deposit(100, 'C')
    expect(bank_account.DisplayCheckingBalance).to eq(100)
  end

  it 'has a method for retrieving the total account balance' do
    bank_account = BankAccount.new
    bank_account.Deposit(100, 'C')
    bank_account.Deposit(100, 'S')
    expect(bank_account.Balance).to eq(200)
  end

  it 'has a method for withdrawing funds' do
    bank_account = BankAccount.new
    bank_account.Deposit(100, 'C')
    bank_account.Deposit(100, 'S')
    expect(bank_account.Withdrawal(75, 'C')).to eq(true)
  end

  it 'has a method for withdrawing funds that confirms the user  has enough money for withdrawal' do
    bank_account = BankAccount.new
    bank_account.Deposit(100, 'C')
    bank_account.Deposit(100, 'S')
    expect(bank_account.Withdrawal(175, 'C')).to eq(false)
  end

  it 'has an interest rate that  does not have a get/setter in the class. ' do
    bank_account = BankAccount.new
    bank_account1 = BankAccount.new

    expect {bank_account.interest_rate=0}.to raise_error(NoMethodError)
  end

  it 'has an attribute  does not have a get/setter in the class. ' do
    bank_account = BankAccount.new

    expect {bank_account.checking_balance=0}.to raise_error(NoMethodError)
  end

  it 'has an num_accounts that  does not have a get/setter in the class. ' do
    bank_account = BankAccount.new

    expect {puts bank_account.num_accounts}.to raise_error(NoMethodError)
  end



end
