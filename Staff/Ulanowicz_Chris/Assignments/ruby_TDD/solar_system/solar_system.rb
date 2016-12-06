class Solar_System
	attr_accessor :name, :planets

	def initialize(name="Andromeda")
		@name = name
		@planets = []
	end

	def planet_count
		p @planets.count
	end

	def super_nova
		@planets.clear
		p @planets.count
	end

	def add_planet(planet)
		@planets.push(planet)
	end
end

class Planet < Solar_System
	attr_accessor :solar_system, :planet_name, :description, :population

	def initialize(solar_system, name, description, population)
		@solar_system = solar_system
		@planet_name = name
		@description = description
		@population = population
		solar_system.add_planet(name)		
	end

	def display_info
		p "#{@planet_name} - #{@description} - has a population of #{@population} and is in #{@solar_system.name}"
	end
end