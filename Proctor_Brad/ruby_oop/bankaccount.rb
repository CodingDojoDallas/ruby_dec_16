class BankAccount
    @@num_of_accounts = 0
    def initialize
        @checking = 0
        @savings = 0
        @interest = "5%"
        @@num_of_accounts += 1
        generate_account_number
        puts "Number of Accounts: #{@@num_of_accounts}"
        self
    end

    def show_account_number
        puts @account_number
        self
    end

    def show_checking
        puts "Amount in checking: #{@checking}"
        self
    end

    def show_savings
        puts "Amount in savings: #{@savings}"
        self
    end

    def show_funds
        puts "Amount in checking and savings: " + (@checking + @savings).to_s
        self
    end

    def deposit val,acc
        if acc == 'checking' then @checking += val
        elsif acc == 'savings' then @savings += val
        else puts "Deposit to either 'checking' or 'savings'" end
        self
    end

    def withdraw val,acc
        if acc == 'checking'
            if val < @checking
                @checking -= val
            else
                puts "Insufficient funds"
            end
        elsif acc == 'savings'
            if val < @savings
                @savings -= val
            else
                puts "Insufficient funds"
            end
        else puts "Deposit to either 'checking' or 'savings'" end
        self
    end

    def account_information
        puts "Account Number: #{@account_number}"
        puts "Your Moolah: #{@checking + @savings}"
        puts "Amount in Checking: #{@checking}"
        puts "Amount in Savings: #{@savings}"
        puts "Interest Rate: #{@interest}"
        self
    end

    private

        def generate_account_number
            @account_number = 16.times.map { rand 10 }.join
            self
        end
end
brad = BankAccount.new
brad.deposit(100,'checking').show_checking.withdraw(50,'checking').show_checking.show_funds
ben = BankAccount.new
ben.deposit(500000,'savings').account_information
ben.generate_account_number
