require_relative 'bankAcct'

RSpec.describe BankAccount do
  before do
    @new_acct = BankAccount.new
  end
  it 'has method for retrieving the checking account balance' do
    expect(@new_acct.show_checkings).to eq(0)
  end

  it 'has a method that retrieves the total account balance' do
    expect(@new_acct.totals).to eq(0)

    @new_acct.add_checkings(30)
    expect(@new_acct.totals).to eq(30)
   end

  it 'has a method that allows the user to withdraw cash' do
    @new_acct.add_checkings(30)
    expect(@new_acct.withdraw_checkings(20)).to eq(10)
  end

  it 'raises an error if a user tries to withdraw more money than they have in the account' do
    @new_acct.add_checkings(30)
    expect(@new_acct.withdraw_checkings(50)).to eq("You have insufficient funds. You only have $30 in your checkings.")
  end

  it 'raises an error when the user tries to print out how many bank accounts there are' do
    expect{@new_acct.total_accounts}.to raise_error
  end

  it 'raises an error when the user tries to set the interest rate' do
    expect{@new_acct.interest}.to raise_error
  end

  it 'raises an error when the user tries to set any attribute' do
    expect{@new_acct.checkings = 500 }.to raise_error
    expect{@new_acct.savings = 500 }.to raise_error
  end

end
