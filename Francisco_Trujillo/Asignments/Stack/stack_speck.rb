require_relative 'stack'
RSpec.describe Stack do
	before do
		@stack1 = Stack.new
		
	end
	it 'show the value of the stack' do
		expect(@stack1.data_store).to eq(@stack1.stack)
	end
	it 'back variable cannot be assigne by user' do
		
		expect{@stack1.back=9}.to raise_error(NoMethodError)
	end
	it 'back variable cannot be assigne by user' do
		@stack1.last_val
		expect(@stack1.back).to eq(nil)
	end
	it 'add value to stack' do
		expect(@stack1.push(2)).to eq(2)
	end
	it 'remove value to stack' do
		expect(@stack1.pop).to eq(@stack1.stack)
	end
	
	
end