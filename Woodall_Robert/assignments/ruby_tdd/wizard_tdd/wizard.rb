require_relative "human"

class Wizard < Human
	attr_accessor :health
	attr_accessor :intelligence
	
	def initialize
		super
		@health = 50
		@intelligence = 25
		self
	end
	
	def heal
		puts "healing wizard..."
		@health += 10
		self
	end
	
	def fireball(obj)
		if (obj.class.ancestors.any? { |i| i == Human })
			puts "attacking with fireball..."
			obj.health -= 20
		else
			puts "Human not found in ancestors chain"
		end
	end
	
	def displayStats
		puts "\nWizard stats..."
		puts "strength: #{@strength}"
		puts "intelligence: #{@intelligence}"
		puts "stealth: #{@stealth}"
		puts "health: #{@health}"
		self
	end
end
