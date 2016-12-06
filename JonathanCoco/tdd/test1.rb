RSpec.describe Array do
  before do
    @a = Array.new
  end
  it 'tests the length of the array' do
    expect(@a.length).to eq(0)
  end
end
