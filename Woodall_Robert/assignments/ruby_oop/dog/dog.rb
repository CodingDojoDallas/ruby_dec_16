require_relative "mammal"

class Dog < Mammal
	def pet
		@health += 5
		self
	end
	
	def walk
		@health -= 1
		self
	end
	
	def run
		@health -= 10
		self
	end
end

Dog.new.display_health
.walk.display_health
.walk.display_health
.walk.display_health
.run.display_health
.run.display_health
.pet.display_health