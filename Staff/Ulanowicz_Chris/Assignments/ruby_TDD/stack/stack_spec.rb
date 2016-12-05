require_relative 'stack'

RSpec.describe Stack do 
	before do
		@hat = Stack.new
	end
	describe 'attributes' do
		it 'has an attribute data_store which is an array that holds values' do
			expect(@hat).to have_attributes(:data_store => [0])
		end
		it 'has an attribute called back which displays last value in stack which is set to 0 by default when initialized' do
			expect(@hat).to have_attributes(:back => 0)
		end
	end
	describe 'behavior' do
		it 'doesnt allow user to alter the back attribute' do
			expect{@hat.back=3}.to raise_error(NoMethodError)
		end
		it 'has method called push that adds a new value to end of stack' do
			@hat.push(3)
			expect(@hat).to have_attributes(:data_store => [0,3])
		end
		it 'has method called pop that removes the last value of the stack' do
			@hat.pop
			expect(@hat).to have_attributes(:data_store => [0])
		end
	end
end