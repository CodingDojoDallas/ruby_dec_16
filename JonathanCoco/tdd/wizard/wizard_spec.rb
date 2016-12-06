require_relative 'wizard'
RSpec.describe Wizard do

    it 'has a default health of 50 and intelligence of 25' do
      wizard = Wizard.new

      expect(wizard.health).to eq(50)
      expect(wizard.intelligence).to eq(25)
    end

    it 'has a heal method that increases health by 10' do
      wizard = Wizard.new

      orig_health = wizard.health
      wizard.heal()
      new_health = wizard.health

      expect(wizard.health).to eq(orig_health + 10)
    end

    it 'has an ancestor chain that  includes  human. ' do

      wizard = Wizard.new

      expect(wizard.class.ancestors.include?(Human)).to eq(true)
    end

    it 'has an fireball method that reduces the objects health. ' do

      wizard = Wizard.new
      wizard2 = Wizard.new

      orig_health = wizard2.health

      wizard.fireball(wizard2)



      expect(wizard2.health < orig_health).to eq(true)
    end

end
