require_relative "solar_system"

RSpec.describe SolarSystem do
	before do
		@solar_system = SolarSystem.new
	end
	
	it "should be initialized with a name, if not its default name should be 'Andromeda'" do
		expect(@solar_system.name).to eq("Andromeda")
		
		expected_name = "SolarSystem Name"
		ss = SolarSystem.new(expected_name)
		expect(ss.name).to eq(expected_name)
	end
	
	it "should contain a list of all planets in it" do
		expect(@solar_system.planets.class.ancestors.first).to eq(Array)
		expect(@solar_system.planets.length).to eq(0)
	end
	
	it "should keep a count of how many planets are in the solar system" do
		expect(@solar_system.num_planets).to eq(0)
	end
	
	it "should only add planets to the solar system that are from the planet class" do
		expect{@solar_system.add_planet("NonPlanet Object")}.to raise_error(ArgumentError)
		@solar_system.add_planet(Planet.new)
		expect(@solar_system.num_planets).to eq(1)
	end
	
	it "should have a method supernova that should remove all planets from the solar system" do
		@solar_system.add_planet(Planet.new)
		expect(@solar_system.num_planets).to eq(1)
		@solar_system.supernova
		expect(@solar_system.num_planets).to eq(0)
	end
end
