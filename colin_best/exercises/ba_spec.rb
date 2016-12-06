require_relative 'bankaccount'

RSpec.describe BankAccount do
  describe 'behavior' do
    before do
      @bank1 = BankAccount.new
    end

    it 'has a method for retrieving the checking account balance' do
    expect(@bank1.checkingAccountBalance).to eq("Your Checking Account balance is: 5000")
    end

    it 'has a method for retrieving the total amount' do
      expect(@bank1.display_total).to eq("Your total amount is: 7500")
    end

    it 'has a method to withdraw cash' do
      checking = @bank1.withdraw('checking', 500)
      savings = @bank1.withdraw('savings', 500)
      expect(savings).to eq(2000)
      expect(checking).to eq(4500)
    end

    



  end

end
