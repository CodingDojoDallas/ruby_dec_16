require_relative 'apple_tree'

RSpec.describe AppleTree do
  before do
    @tree = AppleTree.new
  end
  it 'has a height and age' do
    expect(@tree.height).to eq(0)
    expect(@tree.age).to eq(0)
  end
  it 'has a count of how many apples is on it' do
    expect(@tree.apple_count).to eq(0)
  end
  it 'has a method called year_gone_by that ages it by a year and affects its height' do
    @tree.year_gone_by
    expect(@tree.height).to eq(2)
    expect(@tree.age).to eq(1)
  end
  it 'should not grow apples for the first 3 years of its life' do
    expect(@tree.apple_count).to eq(0)
    @tree.year_gone_by
    expect(@tree.apple_count).to eq(0)
    @tree.year_gone_by
    expect(@tree.apple_count).to eq(0)
    @tree.year_gone_by
    expect(@tree.apple_count).to eq(5)
  end
  it 'should have a method called pick_apples that takes all apples off tree' do
    @tree.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by
    expect(@tree.apple_count).to eq(15)
    @tree.pick_apples
    expect(@tree.apple_count).to eq(0)
  end
  it 'should not grow apples after year 10 and start to decay' do
    @tree.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by
    @tree.year_gone_by.year_gone_by.year_gone_by.year_gone_by.year_gone_by
    expect(@tree.age).to eq(10)
    expect(@tree.apple_count).to eq(0)
  end
end
