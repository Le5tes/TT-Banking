require 'date'
class Transaction
  def initialize transaction
  	@balance = transaction[:balance_now]
  	@withdraw = transaction[:withdraw]
  	@deposit = transaction[:deposit]
  	date_class = transaction[:date_class] || DateTime
  	@date = date_class.now.strftime("%d/%m/%y")

  end

  def to_s
  	"#{@date} || #{@deposit} || #{@withdraw} || #{@balance}"
  end
end