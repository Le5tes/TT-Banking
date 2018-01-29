describe 'Banking features' do
  it 'should be possible to make a bank account' do
  	expect {Account.new}.not_to raise_error
  end
  it 'should be possible to print a statement of the transactions and balance' do
  	my_account = Account.new
  	my_account.deposit 2000
  	my_account.withdraw 500
  	expect{my_account.print_statement}.to output.to_stdout
  end
end