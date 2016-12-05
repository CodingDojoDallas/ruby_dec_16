require_relative 'apple_tree'

RSpec.describe AppleTree do 
	describe 'attributes' do
		before do
			@george = AppleTree.new
		end
		it 'has an attribute for height and age' do
			expect(@george).to have_attributes(:height => 0)
			expect(@george).to have_attributes(:age => 0)
		end
		it 'has a count of how many apples is on it' do
			expect(@george).to have_attributes(:apples => 0)
		end
	end
	describe 'behavior' do 
		before do
			@george = AppleTree.new
		end
		it 'has a method year_gone_by which adds 1 year to age and increases its height' do
			expect(@george.year_gone_by).to eq("Tree is now 1 years old and is 4 feet tall")
		end
		it 'doesnt grow apples for first three years of life' do
			@george.year_gone_by
			@george.year_gone_by
			@george.year_gone_by
			expect(@george.apples).to eq(0)
		end
		it 'has a method pick_apples that takes all apples off of tree' do
			expect(@george.pick_apples).to eq(0)
		end
		it 'begins to decay after 10 years of age and is unable to grow apples' do
			@george.year_gone_by
			@george.year_gone_by
			@george.year_gone_by
			@george.year_gone_by
			@george.year_gone_by
			@george.year_gone_by
			@george.year_gone_by
			@george.year_gone_by
			@george.year_gone_by
			@george.pick_apples
			@george.year_gone_by
			@george.year_gone_by
			expect(@george).to have_attributes(:apples => 0)
		end
	end
end