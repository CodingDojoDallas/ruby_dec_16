require_relative 'mammal'

class Dog < Mammal 
	def pet
		puts "Petting dog, + 5 health"
		@health += 5
		self
	end

	def walk
		puts "Walking Dog, lose 1 Health"
		@health -= 1
		self
	end

	def run
		puts "dog Running, lose 10 health"
		@health -= 10
		self
	end
end

Brutus = Dog.new
Brutus.walk.walk.walk.run.run.pet.display_health


