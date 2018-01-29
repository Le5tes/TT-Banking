describe Account do
  let :transaction { double(:transaction, to_s: '£500') }
  let :myTransaction { double(:myTransaction, new: transaction) }
 
  subject { Account.new(myTransaction) }

  describe '#deposit' do

  	it 'should increase the account balance' do
  	  subject.deposit 500
  	  expect(subject.balance).to eq 500
  	end

  	it 'should create a new transaction' do
  	  expect(myTransaction).to receive(:new)
  	  subject.deposit 500
  	end

  end

  describe '#withdraw' do

  	it 'should reduce the account balance' do
  	  subject.deposit 1000
  	  subject.withdraw 500
  	  expect(subject.balance).to eq 500
  	end

  	it 'should not be possible to withdraw money that is not in the account' do
  	  expect{ subject.withdraw 500 }.to raise_error("Unable to withdraw that amount")
  	end

  	it 'should create a new transaction' do
  	  subject.deposit 1000
  	  expect(myTransaction).to receive(:new)
  	  subject.withdraw 500
  	end

  end

  describe '#print_statement' do

  	it 'should print a header' do
  	  expect{ subject.print_statement }.to output("date || credit || debit || balance\n").to_stdout
  	end

	it 'should print the previous transactions' do
	  subject.deposit 1000
	  expect(transaction).to receive(:to_s)
	  subject.print_statement 
	end

  end

end
