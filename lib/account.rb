require 'transaction'
class Account
  attr_reader :balance
  # reading the account's balance without having to view a statement is meaningful and eases testing

  def initialize transaction_class = Transaction
  	@balance = 0.0
  	@transaction_class = transaction_class
  	@transactions = []
  end

  def deposit amount
  	@balance += amount
  	@transactions << transaction_class.new(deposit: amount, balance_now: @balance)
  end

  def withdraw amount
  	raise "Unable to withdraw that amount" if amount > balance
  	@balance -= amount
  	@transactions << transaction_class.new(withdraw: amount, balance_now: @balance)
  end

  def print_statement
  	@transactions.each do |transaction|
  	puts transaction.to_s
  	end
  	
  end

  private
  attr_reader :transaction_class

end