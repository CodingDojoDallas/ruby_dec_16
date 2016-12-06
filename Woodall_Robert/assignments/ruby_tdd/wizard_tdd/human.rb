class Human
	attr_accessor :strength
	attr_accessor :intelligence
	attr_accessor :stealth
	attr_accessor :health
	
	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
		self
	end
	
	def attack(obj)
		if (obj.class.ancestors.any? { |i| i == Human })
			puts "attacking..."
			obj.health -= 10
		else
			puts "Human not found in ancestors chain"
		end
		self
	end	
end
