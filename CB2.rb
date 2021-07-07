class User
    attr_accessor :accounts
    
    def initialize(name, accounts)
        @name = name
        valid_array(accounts)
    end

    def valid_array(accounts)
        if accounts.class != Array || accounts.empty?
            raise "sin cuenta, no te querimoh"
        else
            @accounts = accounts
        end
    end

    def total_balance
        self.accounts.map {|acc| acc.balance}.sum
    end
end

class BankAccount
    attr_accessor :balance

    def initialize(bank, account_number, balance = 0)
        @bank = bank
        @account_number = account_number
        @balance = balance
    end

    def transfer(amount, account)
        self.balance = self.balance - amount
        account.balance = account.balance + amount
    end
end

# acc_rodrigo = BankAccount.new('sentender', '53242-23425', 5000)
# acc_paul = BankAccount.new('ChileanBank', '3252-23425', 5000)

# acc_rodrigo.transfer(500, acc_paul)

# pp acc_rodrigo
# pp acc_paul

cuenta_rut = BankAccount.new('Hestado','12315243635241', 300000)
cuenta_corriente = BankAccount.new('Hestado','63436323423', 250000)

pedro = User.new('pedro', [cuenta_rut, cuenta_corriente])
pp pedro.total_balance

