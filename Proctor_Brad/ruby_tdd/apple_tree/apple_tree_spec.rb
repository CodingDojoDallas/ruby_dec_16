<<<<<<< HEAD
require_relative 'apple_tree'

RSpec.describe Apple_Tree do
    before do
        @tree = Apple_Tree.new
    end

    describe "Initialization" do
        it "has attributes height, age, and apples when initialized" do
            expect(@tree.height).to eq(0)
            expect(@tree.age).to eq(0)
            expect(@tree.apples).to eq(0)
        end
    end

    describe "Tree Stuff" do
        it "has method count that returns the number of apples on the tree" do
            expect(@tree.count).to eq(0)
        end

        it "has method year_gone_by that ages tree by one year, increases height if age is less than 10, and grows 25 apples if age is between 2 and 10" do
            expect(@tree.year_gone_by).to eq("1 3")
        end

        it "has method pick_apples that removes all apples from the tree" do
            expect(@tree.pick_apples).to eq(0)
        end
    end
end
=======
require_relative 'apple_tree'

RSpec.describe Apple_Tree do
    before do
        @tree = Apple_Tree.new
    end

    describe "Initialization" do
        it "has attributes height, age, and apples when initialized" do
            expect(@tree.height).to eq(0)
            expect(@tree.age).to eq(0)
            expect(@tree.apples).to eq(0)
        end
    end

    describe "Tree Stuff" do
        it "has method count that returns the number of apples on the tree" do
            expect(@tree.count).to eq(0)
        end

        it "has method year_gone_by that ages tree by one year, increases height if age is less than 10, and grows 25 apples if age is between 2 and 10" do
            expect(@tree.year_gone_by).to eq("1 3")
        end

        it "has method pick_apples that removes all apples from the tree" do
            expect(@tree.pick_apples).to eq(0)
        end
    end
end
>>>>>>> upstream/master
