require_relative 'wizard'
require_relative 'ninja'

RSpec.describe Wizard do 
	before do
		@merlin = Wizard.new("Merlin")
		@shinobi = Ninja.new("Shinobi")
	end
	it 'wizard has default health set to 50 and intelligence to 25' do
		expect{@merlin.display_info}.to output("Merlin's health is 50, intelligence is 25, strength is 3, and stealth ability is 3").to_stdout
	end
	it 'has a heal method that increases health by 10' do
		expect(@merlin.heal).to eq("Merlin has been healed up to 60")
	end
	it 'has an ancestor chain that includes the class Human' do
		expect(@merlin.class.ancestors.include?(Human)).to eq(true)
	end
	it 'has a method fireball that attacks an object and reduces that objects health' do
		expect(@merlin.fireball(@shinobi)).to eq("Shinobi's health is now 80")
	end
end

