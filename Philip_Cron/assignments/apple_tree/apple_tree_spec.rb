require_relative 'apple_tree'
RSpec.describe Apple_Tree do
    before do
        @tree1 = Apple_Tree.new
    end
    it 'should have a height and age' do
        expect(@tree1.height).to eq(150)
        expect(@tree1.age).to eq(9)
    end
    it 'should have a count of how many apples is on it' do
        expect(@tree1.apple_count).to eq(1)
    end
    it 'should have a method called year_gone_by, which ages the tree by 1 year affecting its height' do
        @tree1.year_gone_by
        expect(@tree1.age).to eq(@tree1.age)
        expect(@tree1.height).to eq(@tree1.height)
    end
    it 'should have a method called pick_apples that takes all of the apples off the tree' do
        @tree1.pick_apples
        expect(@tree1.num_of_apples).to eq(0)
    end
end