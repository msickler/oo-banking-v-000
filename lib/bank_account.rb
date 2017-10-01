class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(balance = 1000, status = "open", name)
    @name = name
    @balance = balance
    @status = status

  end

def deposit(money)
  self.balance = @balance + money
end

def display_balance
  self.balance
end
end
