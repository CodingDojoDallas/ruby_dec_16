class BankAccount
    attr_reader :CheckingAccount, :SavingAccount, :AccountNumber
    @@account_counter = 0

    # class << self
    #     attr_accessor :account_counter
    # end
    def initialize
        createAccountNumber
        @CheckingAccount = 500
        @SavingAccount = 50
        @interestRate = 0.05
        @@account_counter += 1
    end
    def displayAccountNumber
        puts @AccountNumber
    end
    def check_account_balance
        "Checking Account Balance: #{@CheckingAccount}"
    end
    def save_account_balance
        puts "Saving Account Balance: #{@SavingAccount}"
        self
    end
    def deposit(amount, account)
        if account == "savings"
            puts "deposit savings"
            @SavingAccount += amount
        else
            puts "deposit checking"
            @CheckingAccount += amount
        end
    end
    def withdraw(amount, account)
        if account == "savings"
            if amount < @SavingAccount
                @SavingAccount -= amount
            else
                "Sorry, your Savings Account balance is insufficient"
            end
        else
            if amount < @CheckingAccount
                @CheckingAccount -= amount
            else
                "Sorry, your Checking Account balance is insufficient"
            end
        end
    end
    def account_totals
        "Accounts total is: #{@CheckingAccount + @SavingAccount}"
    end
    def account_information
        puts "Your account number is: #{@AccountNumber}"
        puts "Total balance is: #{(@CheckingAccount + @SavingAccount) + ((@CheckingAccount+@SavingAccount)) * @interestRate}"
        puts "Your Checking Account balance is: #{@CheckingAccount + (@CheckingAccount * @interestRate)}"
        puts "Your Savings Account balance is: #{@SavingAccount + (@SavingAccount * @interestRate)}"
        puts "The interest rate is: #{@interestRate}"
    end
    def count_accounts
        "There are a total of #{self.class.account_counter} accounts"
    end
    private
    @interestRate

    def createAccountNumber
        @AccountNumber = rand.to_s[2..9]
    end

end
# philipsAccount = BankAccount.new
# philipsAccount.displayAccountNumber
# philipsAccount.check_account_balance
# philipsAccount.save_account_balance
# philipsAccount.deposit(300, "checking")
# philipsAccount.check_account_balance
# philipsAccount.deposit(900, "savings")
# philipsAccount.save_account_balance
# philipsAccount.withdraw(325, "checking")
# philipsAccount.check_account_balance
# philipsAccount.withdraw(125, "savings")
# philipsAccount.save_account_balance
# philipsAccount.account_totals
# philipsAccount.account_information
# puts "------Account 2----------"
# authmansAccount = BankAccount.new
# authmansAccount.displayAccountNumber
# authmansAccount.count_accounts
