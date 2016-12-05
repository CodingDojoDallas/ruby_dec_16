require_relative 'stack'

RSpec.describe Stack do
  it 'has an attribute, data_store, which displays an array of values in the Stack' do
    stack = Stack.new
    expect(stack.data_store).to eq([])
  end
  it 'has an attribute, back, which displays the last value in the Stack. Should be 0 by default and user cannot set the back attribute' do
    stack = Stack.new
    expect(stack.back).to eq(0)

    expect{stack.back=10}.to raise_error(NoMethodError)
  end
  it 'has a push method which adds a new value to end of Stack' do
    stack = Stack.new
    stack.push(3)
    expect(stack.data_store).to eq([3])
    expect(stack.back).to eq(3)

    stack.push(5)
    expect(stack.data_store).to eq([3, 5])
    expect(stack.back).to eq(5)
  end

  it 'has a pop method which removes the last value of the Stack and returns nil if there is nothing to remove' do
    stack = Stack.new
    expect(stack.pop).to eq(nil)

    stack.push(5).push(3).push(9).pop
    expect(stack.data_store).to eq([5,3])
    expect(stack.back).to eq(3)

  end
end
