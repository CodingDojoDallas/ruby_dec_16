#describe accepts a string or class.  It is used to organize specs
RSpec.describe SOME_CLASS do
end

#it is what describes the spec. It optionally takes a string.
it 'SOME STRING' do
end

# to expect().to is RSpec's assertion syntax
expect([].length).to eq(0)

#expect().not_to is the inverse of expect().to.
expect([1,2,3,4].length).not_to eq(0)

#before runs the specified block before each test. Helps you keep from repeating code.
before do
  @a = Array.new
end
expect(@a.length).to eq(0)

#All together
RSpec.describe Array do
  before do
    @a = Array.new
  end
  it 'tests the length of the array' do
    expect(@a.length).to eq(0)
  end
end

