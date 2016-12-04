require_relative "wizard"

RSpec.describe Wizard do
	before do
		@wizard = Wizard.new	
	end
	
	it "has a default health of 50 and intelligence of 25" do
		expect(@wizard.health).to eq(50)
		expect(@wizard.intelligence).to eq(25)
	end
	
	it "has a heal method that increases health by 10" do
		expect(@wizard.health).to eq(50)
		@wizard.heal
		expect(@wizard.health).to eq(60)
	end
	
	it "has an ancestor chain that includes Human" do
		expect(@wizard.class.ancestors.include?(Human)).to eq(true)
	end
	
	it "has a fireball method that attacks an obj (only if type Human is in ancestor chain) and reduces the objs health" do
		attackee = "NonHuman obj"		
		expect(@wizard.fireball(attackee)).to eq(nil)
		
		attackee = Human.new
		expect(attackee.health).to eq(100)
		@wizard.fireball(attackee)
		expect(attackee.health).to eq(80)
	end
end
