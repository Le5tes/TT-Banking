require 'date'
class Transaction
  attr_reader :date
  def initialize transaction
  	@balance = transaction[:balance_now]
  	@withdraw = transaction[:withdraw]
  	@deposit = transaction[:deposit]
  	date_class = transaction[:date_class] || DateTime
  	@date = date_class.now
  end

  def to_s
  	"#{date_format(@date)} || #{money_format(@deposit)} || #{money_format(@withdraw)} || #{money_format(@balance)}"
  end

  private
  def money_format value
  	format('%.2f', value) if value
  end
  def date_format date
  	date.strftime("%d/%m/%Y")
  end
end