require_relative "planet"

class SolarSystem
	attr_reader :name, :planets
	
	def initialize(name = "Andromeda")
		@name = name
		@planets = []
	end
	
	def num_planets
		@planets.length
	end	
	
	def add_planet(obj)
		if obj.class.ancestors.include?(Planet)
			@planets.push(obj)
		else
			raise ArgumentError
		end
	end
	
	def supernova
		@planets.clear
	end
end