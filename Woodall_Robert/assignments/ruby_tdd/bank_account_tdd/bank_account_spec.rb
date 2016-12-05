require_relative "bank_account"

RSpec.describe BankAccount do
	before do
		@account = BankAccount.new
	end
		
	it "has a method for retrieving savings, checkings, and all account balances" do		
		expect(@account.balance("total")).to eq(0)
		expect(@account.balance("savings")).to eq(0)
		expect(@account.balance("checkings")).to eq(0)
		expect(@account.balance("invalid")).to eq(nil)
		
		@account.deposit("savings", 10)
		@account.deposit("checkings", 100)
		
		expect(@account.balance("total")).to eq(110)
		expect(@account.balance("savings")).to eq(10)
		expect(@account.balance("checkings")).to eq(100)
	end
	
	it "has a method that allows a user to withdraw cash" do		
		expect(@account.withdraw("invalid", 100)).to eq(nil)
		expect(@account.withdraw("savings", 10)).to eq(nil)
		expect(@account.withdraw("checkings", 100)).to eq(nil)
		
		@account.deposit("savings", 10)
		@account.deposit("checkings", 100)
		
		expect(@account.withdraw("savings", 5)).to eq(5)
		expect(@account.withdraw("checkings", 5)).to eq(95)
		expect(@account.withdraw("savings", 5)).to eq(0)
		expect(@account.withdraw("checkings", 95)).to eq(0)
	end
	
	it "raises an error when a user tries to access class variable @@account_count" do		
		expect{@account.account_count}.to raise_error(NoMethodError)
	end
	
	it "raises an error when a user to set private instance variable @interest_rate" do		
		expect{@account.interest_rate}.to raise_error(NoMethodError)
	end
	
	it "raises an error when a user tries to set any instance variable" do		
		expect{@account.savings_balance = 10}.to raise_error(NoMethodError)
		expect{@account.checkings_balance = 10}.to raise_error(NoMethodError)
		expect{@account.account_num = 10}.to raise_error(NoMethodError)
	end
end
