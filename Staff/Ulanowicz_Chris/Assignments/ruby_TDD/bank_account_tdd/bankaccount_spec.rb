require_relative 'bank_account'

RSpec.describe BankAccount do
	describe 'behavior' do
		before do
			@mine = BankAccount.new
			@mine.deposit_money("checking", 200)
		end
		it 'has a method display_checking_balance which displays checking account balance' do
			expect(@mine.display_checking_balance).to eq("Your checking account has $200")
		end
		it 'has a method display_total_balance which displays sum of checking and savings accounts' do
			expect(@mine.display_total_balance).to eq("Your total accounts balance is $200")
		end
		it 'has a method withdraw_money that allows user to withdraw cash from account' do
			expect(@mine.withdraw_money("checking", 100)).to eq(100)
		end
		it 'displays an error if user tries to withdraw more money than what is available in account' do
			expect(@mine.withdraw_money("savings", 100)).to eq("You have insufficient funds in your savings account")
		end
		it 'displays an error if user tries to print out number of bank accounts' do
			expect{@mine.number_accounts}.to raise_error(NoMethodError)
		end
		it 'displays an error if user tries to set the interest rate' do
			expect{@mine.interest_rate = 2.0}.to raise_error(NoMethodError)
		end
		it 'displays an error if user tries to set any attribute' do
			expect{@mine.checking_balance = 2000}.to raise_error(NoMethodError)
		end
	end
end