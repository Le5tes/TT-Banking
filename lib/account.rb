require 'transaction'
class Account
  attr_reader :balance
  
  def initialize transaction_record_class = TransactionRecord
  	@balance = 0.0
  	@transaction_record_class = transaction_record_class
  	@transaction_records = []
  end

  def deposit amount
  	@balance += amount
  	@transaction_records << transaction_record_class.new(deposit: amount, balance_now: @balance)
  end

  def withdraw amount
  	raise "Unable to withdraw that amount" if amount > balance
  	@balance -= amount
  	@transaction_records << transaction_record_class.new(withdraw: amount, balance_now: @balance)
  end

  def print_statement
  	puts "date || credit || debit || balance"
  	@transaction_records.sort { |a,b| b.date <=> a.date } 
  	.each do |transaction|
  	  puts transaction.to_s
  	end
  	
  end

  private
  attr_reader :transaction_record_class

end