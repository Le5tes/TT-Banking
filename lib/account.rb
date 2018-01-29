class Account
  attr_reader :balance
  # reading the account's balance without having to view a statement is meaningful and eases testing

  def initialize
  	@balance = 0.0
  end

  def deposit amount
  	@balance += amount
  end

  def withdraw amount
  	@balance -= amount
  end

end