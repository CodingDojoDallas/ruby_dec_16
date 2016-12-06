require_relative 'sll'
RSpec.describe SLLNode do
  it 'has 2 attributes, value and next' do
    node = SLLNode.new(3)
    expect(node.val).to eq(3)
    expect(node.next).to eq(nil)
  end
end

RSpec.describe SLL do
  before do
    @sll = SLL.new
  end
  it 'has a head attribute which refers to frist node in list' do
    expect(@sll.head).to eq(nil)

    @sll.head = SLLNode.new(2)
    expect(@sll.head.val).to eq(2)
  end

  it 'has a method called INSERT with 2 arguements, one value for the one to insert and one for the value you want to insert after' do
    @sll.add(1).add(2).add(3).add(4).add(5)
    @sll.insert(10, 3)
    expect(@sll.all_values).to eq([1, 2, 3, 10, 4, 5])

    expect(@sll.insert(10,6)).to eq(nil)

  end

  it 'has method FIND which returns node if found or nil if not' do
    @sll.head = SLLNode.new(3)
    @sll.tail = @sll.head
    @sll.update
    expect(@sll.find(@sll.head)).to eq(@sll.head)

    node = SLLNode.new(3)
    expect(@sll.find(node)).to eq(nil)
  end

  it 'has a method REMOVE that removes the node with the value and returns nil if not found' do
    @sll.add(1).add(2).add(3).add(4).add(5)
    expect(@sll.remove(10)).to eq(nil)

    @sll.remove(3)
    expect(@sll.all_values).to eq([1, 2, 4, 5])

    @sll.remove(4)
    expect(@sll.all_values).to eq([1, 2, 5])

    @sll.remove(1)
    expect(@sll.all_values).to eq([2, 5])
  end

  it 'has method DISPLAY_NODES that shows an array of all current nodes in SLL' do
    expect(@sll.display_nodes).to eq([])

    @sll.add(1)
    expect(@sll.display_nodes).not_to eq([])
  end

  it 'has method DISPLAY_VALUES which shows an array of all current values in the SLL' do
    expect(@sll.display_values).to eq([])

    @sll.add(1).add(2).add(3)
    expect(@sll.display_values).to eq([1, 2, 3])

  end

  it 'has method ADD which adds the node to end of SLL' do
    @sll.add(15)
    expect(@sll.head.val).to eq(15)
    expect(@sll.tail.val).to eq(15)
    expect(@sll.head).to eq(@sll.tail)

    @sll.add(3)
    expect(@sll.head.val).to eq(15)
    expect(@sll.tail.val).to eq(3)
  end

  it 'has method REMOVE_ALL which empties the SLL' do
    @sll.add(1).add(2).add(3)
    expect(@sll.display_values).to eq([1, 2, 3])

    @sll.remove_all
    expect(@sll.display_values).to eq([])

  end

  it 'has 2 methods called min and max which return the min and max values of the SLL' do
    @sll.add(1).add(2).add(3).add(-1)
    expect(@sll.max).to eq(3)
    expect(@sll.min).to eq(-1)
  end

  it 'has method HOW_MANY which returns count of how many nodes are in SLL' do
    expect(@sll.how_many).to eq(0)
    @sll.add(1).add(2).add(3)

    expect(@sll.how_many).to eq(3)
  end
end
