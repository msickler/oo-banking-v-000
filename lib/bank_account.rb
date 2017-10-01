class BankAccount
  attr_accessor :name, :balance, :status

  def initialize(balance = "1000", status = "open")
    @name = name
    @balance = balance
    @status = status
  end

end
