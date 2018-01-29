describe 'Banking features' do
	
  it 'should be possible to make a bank account' do
  	expect { Account.new }.not_to raise_error
  end

  
  let :expected_output { "date || credit || debit || balance
14/01/2012 ||  || 500.00 || 2500.00
13/01/2012 || 2000.00 ||  || 3000.00
10/01/2012 || 1000.00 ||  || 1000.00\n" }
 

  it 'should be possible to print a statement of the transactions and balance' do
  	my_account = Account.new
  	allow(DateTime).to receive(:now).and_return(DateTime.new(2012, 1, 10))
  	my_account.deposit 1000
  	allow(DateTime).to receive(:now).and_return(DateTime.new(2012, 1, 13))
  	my_account.deposit 2000
  	allow(DateTime).to receive(:now).and_return(DateTime.new(2012, 1, 14))
  	my_account.withdraw 500

  	expect{my_account.print_statement}.to output(expected_output).to_stdout
  end

end