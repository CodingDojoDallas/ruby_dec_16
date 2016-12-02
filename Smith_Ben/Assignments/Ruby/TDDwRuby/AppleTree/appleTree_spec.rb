
require_relative 'appleTree'

RSpec.describe Apple_Tree do
	before do
		@tree = Apple_Tree.new
	end

	describe 'Info about my Apple_Tree' do
		it 'has a height and age' do
			expect(@tree.height).to eq(0)
			expect(@tree.age).to eq(0)
		end

		it 'tells me how many apples are on my tree' do
			expect(@tree.apples).to eq(0)
		end

		it 'Years gone by and height of tree' do
			expect(@tree.years_gone_by).to eq("1, 2")
		end

		it 'picking apples that removes all apples from tree' do
			expect(@tree.pick_apples).to eq(0)
		end
	end
end







