class Transfer
 attr_accessor :status, :sender, :receiver, :amount

 def initialize(status = "pending")
   @status = status
   @sender = sender
   @receiver = receiver 
   @amount = amount
   
 end

end
