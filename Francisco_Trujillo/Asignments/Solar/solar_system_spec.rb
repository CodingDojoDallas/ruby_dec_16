require_relative 'solar_system'
RSpec.describe Planet do
	before do
		@earth = Planet.new
	end
	it 'check for the class' do
		expect1 =''
		expect2 = 0
		expect(@earth.name).to eq(expect1)
		expect(@earth.description).to eq(expect1)
		expect(@earth.population).to eq(expect2)
	end
end



RSpec.describe Solar_System do
	before do
		@sun = Solar_System.new
	end
	it 'check for the class' do

		expect3 = 'Andromeda'
		expect(@sun.name).to eq(expect3)

	end
	it 'check for the planet' do

		expect3 = []
		
		expect(@sun.planet).to eq(expect3)

	end
	it 'check for the planet count' do

		expect3 = []
		
		expect(@sun.planet_count).to eq(expect3.length)

	end
	it 'check for the planet destroy' do

		expect3 = []
		
		expect(@sun.super_nova).to eq(expect3)

	end
	it 'check for the planet destroy' do
		mic=Planet.new
		mic.name = 'mic'
		expect3 = ['mic']
		
		expect(@sun.add_planet(mic)).to eq(expect3)

	end
	
end