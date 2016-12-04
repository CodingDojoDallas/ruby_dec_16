require_relative 'wizard'
RSpec.describe Wizard do
	wizard1 = Wizard.new
	wizard2 = Wizard.new
	it 'has a default health of 50 and intelligence of 25' do
		expect(wizard1.health).to eq(50)
		expect(wizard1.intelligence).to eq(25)
	end
	it 'has a method called heal that increases health by 10' do
		expect(wizard1.heal).to eq(60)
	end
	it 'has an ancestor of human' do
		expect(wizard1.class.ancestors).to include(Human)
	end
	it "has a method called fireball that takes a parameter, and decreases it's health by 20" do
		wizard1.fireball(wizard2)
		expect(wizard2.health).to eq(30)
	end
end


