require_relative 'sll'

RSpec.describe SLLNode do 
	before do
		@noid = SLLNode.new(2)
	end
	it 'has attributes called value and next' do
		expect(@noid).to have_attributes(:value => 2)
		expect(@noid).to have_attributes(:next => nil)
	end
end

RSpec.describe SLL do 
	before do
		@sll = SLL.new
		@sll.add(2)
		@sll.add(4)
	end
	it 'has an attribute called head which refers to the first node in the list' do
		expect(@sll.head).to be_a(SLLNode)
	end
	it 'has a method called insert that inserts a new node after a specified value' do
		@sll.insert(3,2)
		expect(@sll.display_values).to eq([2,3,4])
	end
	it 'has a find method that returns the node if found or nil if not found' do
		expect(@sll.find(2)).to be_a(SLLNode)
		expect(@sll.find(6)).to eq(nil)
	end
	it 'has a remove method that removes node with that value or returns nil if not found' do
		expect(@sll.remove(4)).to be_a(SLLNode)
		expect(@sll.remove(8)).to eq(nil)
	end
	it 'has a display_nodes method that shows an array of all current nodes' do
		expect(@sll.display_nodes).to include(SLLNode)
	end
	it 'has a display_values method that shows an array of all current node values' do
		expect(@sll.display_values).to eq([2,4])
	end
	it 'has a method called add which inserts a new node at the end of the list' do
		@sll.add(3)
		expect(@sll.display_values).to eq([2,4,3])
	end
	it 'has a remove_all method which removes all of the nodes from the list' do
		@sll.remove_all()
		expect(@sll.head).to eq(nil)
	end
	it 'has min and max methods that return those values of the list' do
		expect(@sll.max).to eq(4)
		expect(@sll.min).to eq(2)
	end
	it 'has a how_many method that returns the count of nodes in the list' do
		expect(@sll.how_many).to eq(2)
	end
end