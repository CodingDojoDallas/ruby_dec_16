#Monet Harkin

require_relative 'wizard'

RSpec.describe Wizard do
	before do
		@w1_test = Wizard.new
		@w2_test = Wizard.new
	end
	it "should test wizard health default" do
		expect(@w1_test.health).to eq(50)
		expect(@w2_test.health).to eq(50)
	end	
	it "should test wizard intelligence default" do
		expect(@w1_test.intelligence).to eq(25)
		expect(@w2_test.intelligence).to eq(25)
	end	
	it "tests heal method to increase health by 10" do
		testhealth = @w1_test.health
		testhealth += 10
		expect(@w1_test.heal).to eq(testhealth)
	end
	it "tests that Wizard is ancestor of Human" do
		expect(@w1_test).to be_kind_of(Human)
	end
	it "test Wizard fireball method attacks reducing health by 20" do
		# wizard 1 variable of current health -20
		testhealth = @w1_test.health
		testhealth -= 20
		# wizard 2 attacks(fireball) wizard 1 to reduce actual health by 20
		expect(@w2_test.fireball(@w1_test)).to eq(testhealth)
	end


end