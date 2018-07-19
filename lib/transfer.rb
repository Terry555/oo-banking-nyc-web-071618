require 'pry'
class Transfer
  # your code heresdflkjsdflkj

attr_accessor :sender, :receiver, :status

    def initialize(sender, receiver, amount)
      @sender = sender
      @receiver = receiver
      @status = 'pending'
      @amount = amount
    end

    def amount
      @amount
    end

    def valid?
     sender.valid? && receiver.valid? == true ? true : false
    end

    def execute_transaction
      if sender.balance < @amount
        @status = 'rejected'
        return "Transaction rejected. Please check your account balance."
      else
      if @status == 'pending'
      sender.balance -= @amount
      receiver.balance += @amount
      @status = 'complete'
    end
  end
    end

    def reverse_transfer
      if @status == 'complete'
      sender.balance += @amount
      receiver.balance -= @amount
      @status = 'reversed'
    end
  end
end
