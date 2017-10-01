class Transfer
 attr_accessor :status, :sender, :receiver, :amount

 def initialize(status = "pending", sender, receiver, amount)
   @status = status
   @sender = sender
   @receiver = receiver
   @amount = amount
 end


def valid?
  self.sender.valid? && self.receiver.valid?
end

def execute_transaction
  if self.valid? && self.sender.balance > self.amount && self.status == "pending"
    sender.balance -= self.amount
    receiver.balance += self.amount
    self.status = "complete"
    status
  else self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end

  def reverse_transfer
    if self.execute_transaction == true
      receiver.balance -= self.amount
      sender.balance += self.amount
      self.status = "reversed"
    else self.status = "complete"
    end 
  end

end

end
