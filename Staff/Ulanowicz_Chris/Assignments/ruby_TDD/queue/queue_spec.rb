require_relative 'queue'

RSpec.describe Queue do 
	before do
		@line = Queue.new
	end
	describe 'attributes' do
		it 'has an attribute called data_store which contains the values in the queue' do
			expect(@line).to have_attributes(:data_store => [])
		end
		it 'has an attribute called back which has a default value of 0' do
			expect(@line).to have_attributes(:back => 0)
		end
		it 'has an attribute called max and min that has those values from the queue' do
			@line.enqueue(5)
			@line.enqueue(1)
			expect(@line).to have_attributes(:max => 5, :min => 1)
		end
	end
	describe 'behavior' do
		before do
			@line.enqueue(5)
			@line.enqueue(8)
		end
		it 'doesnt allow user to change the attribute called back' do
			expect{@line.back = 22}.to raise_error(NoMethodError)
		end
		it 'has a method called enqueue that adds a value to the end of the queue' do
			expect(@line.enqueue(9)).to eq([5,8,9])
		end
		it 'has a method called dequeue that removes the first value of the queue' do
			expect(@line.dequeue).to eq([8])
		end
		it 'returns nil if dequeue method called and there isnt anything to remove' do
			@line.dequeue
			@line.dequeue
			expect(@line.dequeue).to eq(nil)
		end
	end
end