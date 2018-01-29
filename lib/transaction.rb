class Transaction
  def initialize transaction
  	@balance = transaction[:balance_now]
  	@withdraw = transaction[:withdraw]
  	@deposit = transaction[:deposit]

  end

  def to_s
  	"#{@deposit} || #{@withdraw} || #{@balance}"

  end
end