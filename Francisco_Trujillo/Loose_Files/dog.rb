require_relative 'mammal'

class Dog < Mammal
	def pet
		@health+=5
		self
	end
	def walk
		@health-=1
		self
	end
	def run
		@health-=10
		self
	end
end

careto = Dog.new
careto.walk.walk.walk.run.run.pet.healths