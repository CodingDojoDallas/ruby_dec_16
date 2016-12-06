
class Solar_System
	attr_accessor :name, :planets
	def initialize name="Andromeda"
		@name = name
		@planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Bentopia"]
	end

	def count_planets
		@planets.count
	end

	def super_nova
		@planets = []
	end
end

class Planet < Solar_System
	attr_accessor :name, :description, :population

	def add_planet name, description, population
		@planets << planet
		@name = name
		@description = description
		@population = population
	end
end





