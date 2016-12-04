require_relative 'human'
class Wizard < Human
	def initialize 
		@health = 50
		@intelligence = 25
	end
	def heal
		puts 'health increased|^| by 10!'
		@health +=10
	end
	def fireball(x)
		x.health -=20
	end
end


