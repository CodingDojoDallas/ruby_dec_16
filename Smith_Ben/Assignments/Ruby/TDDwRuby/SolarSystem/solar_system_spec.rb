
require_relative 'solar_system'

RSpec.describe Planet do
	before do
		@planet = Planet.new
		@planet.name = 'Bentopia'
		@planet.description = 'Badass'
		@planet.population = 1
	end

	describe 'Planet Initialization' do
		it 'has getter and setter for name, description, population' do
			expect(@planet.name).to eq('Bentopia')
			expect(@planet.description).to eq('Badass')
			expect(@planet.population).to eq(1)
		end
	end

	describe 'Planet Info' do
		before do
			@planet = Planet.new
		end

		it 'has ability to add_planet' do
			@planet.name = 'Mars'
			@planet.planets = @planet.name
			expect(@planet.planets).to eq("Mars")
		end
	end
end

RSpec.describe Solar_System do
	before do
		@solar = Solar_System.new
	end

	describe 'Solar System Initialization' do
		it 'has default getter and setter of Andromeda' do
			expect(@solar.name).to eq('Andromeda')
			@solar.name = 'Ben'
			expect(@solar.name).to eq("Ben")
		end
	end

	describe 'Solar System Info' do
		it 'has a list of planets?' do
			@planet = Planet.new 
			expect(@solar.planets).to match_array(["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Bentopia"])
		end

		it 'count number of planets in solar system' do
			expect(@solar.count_planets).to eq(9)
		end

		it 'has a method called Super Nova, clears all Planets' do
			@solar.super_nova
			expect(@solar.planets.empty?).to eq(true)
		end
	end
end








