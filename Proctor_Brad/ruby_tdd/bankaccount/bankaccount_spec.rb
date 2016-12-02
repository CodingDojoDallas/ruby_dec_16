require_relative 'bankaccount'

RSpec.describe BankAccount do
    before do
        @account = BankAccount.new
    end
    it 'has a method for retrieving the checking account balance' do
        expect(@account.show_checking).to eq("Amount in checking: 500")
    end

    it 'has a method that retrieves the total account balance' do
        expect(@account.show_funds).to eq("Amount in checking and savings: 1500")
    end

    it 'has a method that allows the user to withdraw cash' do
        savings = @account.withdraw(100,'savings')
        expect(savings).to eq(900)
    end

    it 'shows Insufficient funds when user tries to take too much from account' do
        savings = @account.withdraw(1200,'savings')
        expect(savings).to eq("Insufficient funds")
    end

    it 'raises an error when the user tries to print out how many bank accounts there are' do
        expect{ @account.num_of_accounts}.to raise_error(NoMethodError)
    end

    it 'raises an error when the user tries to set the interest rate' do
        expect{ @account.interest(0.02)}.to raise_error(NoMethodError)
    end

    it 'raises an error when the user tries to set any attribute' do
        expect{ @account.num_of_accounts(5) }.to raise_error(NoMethodError)
        expect{ @account.account_number(123) }.to raise_error(ArgumentError)
        expect{ @account.checking(3) }.to raise_error(ArgumentError)
        expect{ @account.savings(2000000) }.to raise_error(ArgumentError)
        expect{ @account.interest(0.02) }.to raise_error(NoMethodError)
    end
end
