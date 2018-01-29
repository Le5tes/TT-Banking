describe Transaction do 
  let :date { double(:date, strftime: '12pm')}
  let :my_date_class { double(:my_date_class,now: date) }
  subject { Transaction.new(deposit: 500, balance_now: 1000, date_class: my_date_class) }
  describe '#print' do
    it 'should include the balance after the transaction' do
      expect(subject.to_s).to include '1000'
    end
    it 'should include the amount withdrawn or deposited' do
      expect(subject.to_s).to include '500'
    end
    it 'should include the date' do
      expect(subject.to_s).to include '12pm'
    end
  end
	
end