describe 'Banking features' do
  it 'should be possible to make a bank account' do
  	expect {Account.new}.not_to raise_error
  end

end