<<<<<<< HEAD
require_relative 'wizard'

RSpec.describe Wizard do
    before do
        @brad = Wizard.new
        @ben = Wizard.new
    end

    it 'has a default health of 50 and intelligence of 25' do
        expect(@brad.health).to eq(50)
        expect(@brad.intelligence).to eq(25)
    end

    it 'has a heal method that increases health by 10' do
        @brad.heal
        expect(@brad.health).to eq(60)
    end

    it 'has an ancestor chain that includes Human' do
        expect(@brad.class.ancestors.include? Human).to eq(true)
    end

    it 'has a fireball method that attacks an object and reduces the objects health' do
        @brad.fireball @ben
        expect(@ben.health).to eq(30)
    end
end
=======
require_relative 'wizard'

RSpec.describe Wizard do
    before do
        @brad = Wizard.new
        @ben = Wizard.new
    end

    it 'has a default health of 50 and intelligence of 25' do
        expect(@brad.health).to eq(50)
        expect(@brad.intelligence).to eq(25)
    end

    it 'has a heal method that increases health by 10' do
        @brad.heal
        expect(@brad.health).to eq(60)
    end

    it 'has an ancestor chain that includes Human' do
        expect(@brad.class.ancestors.include? Human).to eq(true)
    end

    it 'has a fireball method that attacks an object and reduces the objects health' do
        @brad.fireball @ben
        expect(@ben.health).to eq(30)
    end
end
>>>>>>> upstream/master
