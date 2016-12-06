class BankAccount
    attr_accessor :account_number, :checking, :savings
    @@num_of_accounts = 0
    def initialize
        @checking = 500
        @savings = 1000
        @interest = 0.05
        @@num_of_accounts += 1
        generate_account_number
        self
    end

    def show_account_number
        puts @account_number
    end

    def show_checking
        "Amount in checking: #{@checking}"
    end

    def show_savings
        "Amount in savings: #{@savings}"
    end

    def show_funds
        "Amount in checking and savings: " + (@checking + @savings).to_s
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
                return @checking -= val
            else
                return "Insufficient funds"
            end
        elsif acc == 'savings'
            if val < @savings
                return @savings -= val
            else
                return "Insufficient funds"
            end
        else return "Deposit to either 'checking' or 'savings'" end
    end

    def account_information
        puts "Account Number: #{@account_number}"
        puts "Your Moolah: #{@checking + @savings}"
        puts "Amount in Checking: #{@checking}"
        puts "Amount in Savings: #{@savings}"
        puts "Interest Rate: #{@interest}"
        self
    end

    def count_accounts
        puts "There are a total of #{@@num_of_accounts} accounts"
    end

    private
        attr_accessor :interest

        def generate_account_number
            @account_number = 16.times.map { rand 10 }.join
            self
        end
end
