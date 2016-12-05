require_relative 'fixum'

Rspec.describe Fixnum do
  it 'has a method prev that returns previous number of self' do
    expect(3.prev).to eq(2)
    expect(3.prev.prev).to eq(1)
  end
  it'has a method skip that returns self+1' do
    expect(3.skip).to eq(5)
    expect(3.skip.skip).to eq(7)
  end
  it 'has a method double that doubles self' do
    expect(3.double).to eq(6)
    expect(3.double.double).to eq(12)
  end
end

require_relative 'string'
RSpec.describe String do
  it 'has a my_reverse method that returns new String reversed' do
    string = "hello"
    expect(string.my_reverse).to eq("olleh")
    expect(string).to eq("hello")
  end
  it 'has a my_reverse! method that alters the receiver' do
    string="hello"
    expect(string.my_reverse!).to eq("olleh")
    expect(string).to eq("olleh")
  end
end
