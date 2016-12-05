require_relative 'queue'

RSpec.describe Queue do
  it 'has an attribute, data_store, which displays an array of values in the Queue' do
    queue = Queue.new
    expect(queue.data_store).to eq([])
  end
  it 'has an attribute, back, which displays the last value in the Queue. Should be 0 by default and user cannot set the back attribute' do
    queue = Queue.new
    expect(queue.back).to eq(0)

    expect{queue.back=10}.to raise_error(NoMethodError)
  end
  it 'has a enqueue method which adds a new value to end of Queue' do
    queue = Queue.new
    queue.enqueue(3)
    expect(queue.data_store).to eq([3])
    expect(queue.back).to eq(3)

    queue.enqueue(5)
    expect(queue.data_store).to eq([3, 5])
    expect(queue.back).to eq(5)
  end

  it 'has a dequeue method which removes the first value of the Queue and returns nil if there is nothing to dequeue' do
    queue = Queue.new
    expect(queue.dequeue).to eq(nil)

    queue.enqueue(5).enqueue(3).enqueue(9).dequeue
    expect(queue.data_store).to eq([5,3])
    expect(queue.back).to eq(3)
  end

  it 'has an attribute called max and another called min which tracks the max and minimum of the Queue' do
    queue = Queue.new
    queue.enqueue(5).enqueue(3).enqueue(9).enqueue(-5)
    expect(queue.max).to eq(9)
    expect(queue.min).to eq(-5)
  end
end
