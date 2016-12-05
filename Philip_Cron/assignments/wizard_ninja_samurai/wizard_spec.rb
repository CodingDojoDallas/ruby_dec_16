require_relative 'wizard'
require_relative 'ninja'
RSpec.describe Wizard do
    before do
        @wiz = Wizard.new
    end
    it 'Wizard has a default health of 50 and intelligence of 25' do
        expect(@wiz.health).to eq(50)
    end
    it 'Wizard has a heal method that increases health by 10' do
        expect(@wiz.heal).to eq(60)
    end
    it 'Wizard has an ancestor chain that includes Human' do
        yes = true
        expect(@wiz.class.ancestors.include?(Human)).to eq(yes)
    end
    it 'Wizard has a fireball method that attacks an object and reduces the object\'s health' do
        sam = Ninja.new
        expected = 70
        expect(@wiz.fireball(sam)).to eq(expected)
    end
end