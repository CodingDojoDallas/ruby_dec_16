require_relative "planet"

RSpec.describe Planet do
	before do
		@planet = Planet.new	
	end
	
	it "has name, description, and population attributes" do
		expected_name = "Planet Name"
		expected_description = "Planet Description"
		expected_population = 100
		
		@planet.name = expected_name
		@planet.description = expected_description
		@planet.population = expected_population
		
		expect(@planet.name).to eq(expected_name)
		expect(@planet.description).to eq(expected_description)
		expect(@planet.population).to eq(expected_population)
	end
end