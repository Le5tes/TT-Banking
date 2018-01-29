describe Account do
  describe '#deposit' do
  	it 'should increase the account balance' do
  	  subject.deposit 500
  	  expect(subject.balance).to eq 500
  	end
  end
  describe '#withdraw' do
  	it 'should reduce the account balance' do
  	  subject.deposit 1000
  	  subject.withdraw 500
  	  expect(subject.balance).to eq 500
  	end
  end
end
