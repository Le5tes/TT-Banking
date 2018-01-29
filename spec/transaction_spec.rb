describe Transaction do 
  subject { Transaction.new(deposit: 500, balance_now: 1000 ) }
  describe '#print' do
    it 'should print the balance after the transaction' do
      expect(subject.to_s).to include '1000'
    end
  end
	
end