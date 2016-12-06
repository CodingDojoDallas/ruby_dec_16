require_relative "apple_tree"

RSpec.describe AppleTree do
	before do
		@apple_tree = AppleTree.new
	end
	
	it "should have a height and age" do
		expected_height = 10
		expected_age = 8
		
		@apple_tree.height = expected_height
		@apple_tree.age = expected_age
		
		expect(@apple_tree.height).to eq(expected_height)
		expect(@apple_tree.age).to eq(expected_age)
	end
	
	it "should have a count of how many apples are on the tree" do
		expect(@apple_tree.apple_count).to eq(0)
	end
	
	it "has a method called year_gone_by, which ages the tree by 1 affecting its height" do
		prevHeight = 1
		prevAge = 0
		
		expect(@apple_tree.height).to eq(prevHeight)
		expect(@apple_tree.age).to eq(prevAge)
		
		@apple_tree.year_gone_by
		
		expect(@apple_tree.height).to eq(prevHeight + 1)
		expect(@apple_tree.age).to eq(prevAge + 1)
	end
	
	it "should not grow apples for the first three years of its life" do
		for i in 1..3
			@apple_tree.year_gone_by
			expect(@apple_tree.apple_count).to eq(0)
		end
		
		@apple_tree.year_gone_by
		expect(@apple_tree.apple_count).to eq(10)
	end
	
	it "should have a method called pick_apples that removes all apples from the tree" do
		expect(@apple_tree.apple_count).to eq(0)
		
		for i in 1..10
			@apple_tree.year_gone_by
		end
		
		expect(@apple_tree.apple_count).to be > 10
		@apple_tree.pick_apples
		expect(@apple_tree.apple_count).to eq(0)
	end
end
