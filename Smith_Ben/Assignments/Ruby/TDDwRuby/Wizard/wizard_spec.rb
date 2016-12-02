
require_relative 'wizard'

RSpec.describe Wizard do
	before do
		@wizard = Wizard.new
	end

	it 'Default Health 50 & Intelligence 25' do
		expect(@wizard.health).to eq(50)
		expect(@wizard.intelligence).to eq(25)
	end

	it 'Heal method to increase Health by +10' do
		@wizard.heal
		expect(@wizard.health).to eq(60)
	end

	it 'Wizard has ancestor chain including Human' do
		expect(@wizard.class.ancestors.include? (Human)).to eq(true)
	end

	it 'Fireball Method reduces Objects Health' do
		Brad = Wizard.new
		@wizard.fireball(Brad)
		expect(Brad.health).to eq(30)
	end
end
