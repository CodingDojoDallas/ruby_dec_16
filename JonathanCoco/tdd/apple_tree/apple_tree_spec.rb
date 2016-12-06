require_relative 'apple_tree'
load 'apple_tree.rb'

RSpec.describe AppleTree do

    it 'has a getter and setter for height & age' do
      apple_tree = AppleTree.new

      apple_tree.height = 3
      apple_tree.age = 5

      expect(apple_tree.height).to eq(3)
      expect(apple_tree.age).to eq(5)
    end

    it 'apple tree has a  count of apples  on it' do
        apple_tree = AppleTree.new

        apple_tree.height = 3
        apple_tree.age = 5

        apple_tree.grow()

        expect(apple_tree.apple_count).to eq(300)
    end

    it 'apple tree has a  year_gone_by method that ages the tree by 1' do
        apple_tree = AppleTree.new

        apple_tree.year_gone_by()

        expect(apple_tree.age).to eq(1)
    end

    it 'cannot grow apples for the first 3 years  of its life' do

        apple_tree = AppleTree.new

        apple_tree.year_gone_by()
        apple_tree.year_gone_by()

        apple_tree.grow()
        apple_tree.grow()

        expect(apple_tree.apple_count).to eq(0)
    end

    it 'apple tree has a method called  pick apples that removes  all apples' do
        apple_tree = AppleTree.new

        apple_tree.age = 5
        apple_tree.grow()
        apple_tree.pick_apples()

        expect(apple_tree.apple_count).to eq(0)
    end

    it 'should not grow apples after  10 years' do

        apple_tree = AppleTree.new
        
        apple_tree.age = 11
        apple_tree.grow()

        expect(apple_tree.apple_count).to eq(0)

    end

end
