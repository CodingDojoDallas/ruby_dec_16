class Planet
	attr_accessor :name, :description, :population
	def initialize
		@name = ''
		@description = ''
		@population = 0
	end
end
class Solar_System
	attr_accessor :name, :planet
	def initialize(name ='Andromeda')
		
		@name = name
		@planet = []
	end
	def planet_count
		@planet.length
	end
	def super_nova
		@planet = []
	end
	def add_planet(object)
		if object.class.ancestors.include?Planet
			@planet.push(object.name)
		end
	end
end		