require_relative 'bank_account_demo'

RSpec.describe BankAccount do

	describe 'behavior' do
		before do
			@test = BankAccount.new
			@test.deposit('checking', 100)
			@test.deposit('savings', 100)
		end
		it 'has a method for retrieving the checking account balance' do
			expect(@test.check_balance('checking')).to eq(@test.checking)
		end
		it 'has a method for retrieving the total account balance' do
			expect(@test.check_balance('total')).to eq(@test.checking + @test.savings)
		end
		it 'has method for withdrawing cash' do
			checking_balance = @test.checking
			savings_balance = @test.savings
			@test.withdraw('checking', 50)
			@test.withdraw('savings', 50)
			expect(@test.check_balance('checking')).to eq(checking_balance - 50)
			expect(@test.check_balance('savings')).to eq(savings_balance - 50)
		end
		it 'raises an error with the user attempts to withraw more than in the account' do
			checking_balance = @test.checking
			savings_balance = @test.savings
			expect{@test.withdraw('checking', checking_balance + 1)}.to raise_error(TransactionError)
			expect{@test.withdraw('savings', savings_balance + 1)}.to raise_error(TransactionError)
		end
		it 'raises an error when the user attempts to retrieve the total number of accounts' do
			expect{@test.total_accounts}.to raise_error(NoMethodError)
		end
		it 'raises an error when the user attemptsto set the interest rate' do
			expect{@test.interest_rate=rand(0..9)}.to raise_error(NoMethodError)	
		end
	end
	describe 'attributes' do
		before do
			@test = BankAccount.new
		end
		it 'raises an error when a user attempts to set any attribute' do
			expect{@test.checking=rand(0..9)}.to raise_error(NoMethodError)
			expect{@test.savings=rand(0..9)}.to raise_error(NoMethodError)
			expect{@test.account_number=rand(0..9)}.to raise_error(NoMethodError)
		end
	end
end




