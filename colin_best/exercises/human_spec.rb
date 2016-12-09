require_relative 'human'

RSpec.describe Human do
  before do
    @wizard = Wizard.new
  end
    it 'Wizard has a default health of 50 and intelligence of 25' do
      expect(@wizard.health).to eq(50)
      expect(@wizard.intelligence).to eq(25)
    end

    it 'has a heal method that increases health by 10' do
      expect(@wizard.heal).to eq(60)
    end

    it 'has an ancestor that includes Human' do
      human = Wizard.ancestors.include?(Human)
      expect(human).to eq(true)
    end

    it 'has a fireball method tht reduces that objects health' do
      tester = Wizard.new
      @wizard.fireball(tester)
      expect(tester.health).to eq(40)
    end
    #can't make the objects health go down!!!

end
