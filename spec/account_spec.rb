describe Account do
  describe '#deposit' do
  	it 'should increase the account balance' do
  	  subject.deposit 500
  	  expect(subject.balance).to eq 500
  	end
  end
  describe '#withdraw' do
  	# it 
  end
end
