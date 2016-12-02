
require_relative 'bankAccount'

RSpec.describe BankAccount do
	before do
		@bank = BankAccount.new
	end

	it 'Checking Account Balance' do
		expect(@bank.checking_balance).to eq("Checking Balance: $1500")
	end

	it 'Total Account Balance' do
		expect(@bank.show_funds).to eq("Total amount in Bank Account: 6500")
	end

	it 'Withdraw Cash' do
		savings = @bank.withdraw(200, 'savings')
		expect(savings).to eq(4800)
	end

	it 'Error if Withdraw too much' do
		savings = @bank.withdraw(5100, 'savings')
		expect(savings).to eq("Insufficient Funds")
	end

	it 'Error tyring to print how many Bank Accounts' do
		expect{@bank.num_of_accounts}.to raise_error(NoMethodError) 
	end

	it 'Error user is trying to set interest rate' do
		expect{@bank.interest_rate(0.02)}.to raise_error(NoMethodError)
	end

	it 'Raises an error when the user tries to set any attribute' do
      	expect{@bank.num_of_accounts(5)}.to raise_error(NoMethodError)
      	expect{@bank.account_number(123)}.to raise_error(ArgumentError)
      	expect{@bank.checking(2000000)}.to raise_error(ArgumentError)
      	expect{@bank.savings(2000000)}.to raise_error(ArgumentError)
      	expect{@bank.interest(0.02)}.to raise_error(NoMethodError)
  	end
end








