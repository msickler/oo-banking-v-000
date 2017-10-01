class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(balance = 1000, status = "open", name)
    @name = name
    @balance = balance
    @status = status
    @account = []
  end

def deposit(money)
  self.balance << money
end

end
