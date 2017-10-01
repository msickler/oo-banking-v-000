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

end
