require 'transaction'
class Account
  attr_reader :balance
  
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
  	puts "date || credit || debit || balance"
  	@transactions.sort { |a,b| b.date <=> a.date } 
  	.each do |transaction|
  	  puts transaction.to_s
  	end
  	
  end

  private
  attr_reader :transaction_class

end