class BankAccount
#sdlfkjsdf

attr_accessor :balance, :status

  def initialize(name, balance=1000, status="open")
    @name = name
    @balance = balance
    @status = status
  end

  def name
    @name
  end

# def balance
#   @balance
# end
#
# def status
#   @status
# end

  def deposit(amount)
    @balance += amount
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

# def balance=(argument)
#
# end
#
# def status=(argument)
#
# end

  def valid?
  @balance > 0 && @status == "open" ? true : false
  end

  def close_account
    @status = "closed"
  end

  
end
