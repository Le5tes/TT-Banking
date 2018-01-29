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
  	it 'should not be possible to withdraw money that is not in the account' do
  	  expect{subject.withdraw 500}.to raise_error("Unable to withdraw that amount")
  	end
  end
end
