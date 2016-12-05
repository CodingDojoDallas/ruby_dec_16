require_relative 'bank_account'
RSpec.describe BankAccount do
    before do
        @b_a = BankAccount.new
    end
    it 'has a method for retrieving the checking account balance' do
        expect(@b_a.check_account_balance).to eq("Checking Account Balance: 500")
    end
    it 'Has a method that retrieves the total account balance' do
        expect(@b_a.account_totals).to eq("Accounts total is: 550")
    end
    it 'Has a method that allows the user to withdraw cash' do
        expect(@b_a.withdraw(10,"savings")).to eq(40)
    end
    it 'Raises an error if a user tries to withdraw more money than they have in the account' do
        expect(@b_a.withdraw(100,"savings")).to eq("Sorry, your Savings Account balance is insufficient")
    end
    it 'Raises an error when the user tries to print out how many bank accounts there are' do
        expect{@b_a.count_accounts}.to raise_error(NoMethodError)
    end
    it 'Raises an error when the user tries to set the interest rate' do
        expect{@b_a.interestRate}.to raise_error(NoMethodError)
    end
    it 'Raises an error when the user tries to set any attribute' do
        expect{@b_a.CheckingAccount=1000000}.to raise_error(NoMethodError)
    end
end