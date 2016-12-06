require_relative 'MathDojo'

RSpec.describe MathDojo do
  before do
    @mathdojo = MathDojo.new
  end

  it 'has one instance variable answer with default val of 0  ' do
    expect(@mathdojo.answer).to eq(0)
  end
end
