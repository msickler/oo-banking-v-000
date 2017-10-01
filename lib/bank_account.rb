class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(balance = 1000, status = "open", name)
    @name = name
    @balance = balance
    @status = status
  end

end
