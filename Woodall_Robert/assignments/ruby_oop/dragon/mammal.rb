class Mammal
	attr_accessor :health
	
	def initialize
		@health = 170
	end
	
	def display_health
		puts "Mammal health: #{@health}"
		self
	end
end
