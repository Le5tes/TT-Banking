require 'date'
class Transaction
  def initialize transaction
  	@balance = transaction[:balance_now]
  	@withdraw = transaction[:withdraw]
  	@deposit = transaction[:deposit]
  	date_class = transaction[:date_class] || DateTime
  	@date = date_class.now.strftime("%d/%m/%Y")

  end

  def to_s
  	"#{@date} || #{to_money_format(@deposit)} || #{to_money_format(@withdraw)} || #{to_money_format(@balance)}"
  end

  private
  def to_money_format value
  	format('%.2f', value) if value
  end
end