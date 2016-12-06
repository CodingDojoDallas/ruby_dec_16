require_relative "human"

class Samurai < Human
	@@samurai_count = 0
	attr_accessor :health
	
	def initialize
		super
		@health = 200
		@@samurai_count += 1
		self
	end
	
	def death_blow(obj)
		if (obj.class.ancestors.any? { |i| i == Human })
			puts "attacking with death_blow..."
			obj.health = 0
		else
			puts "Human not found in ancestors chain"
		end
		self
	end
	
	def meditate
		@health = 200
		self
	end
	
	def how_many
		puts "samurai: #{@@samurai_count}"
		self
	end
	
	def displayStats
		puts "\nSamurai stats..."
		puts "total samurais: #{@@samurai_count}"
		puts "strength: #{@strength}"
		puts "intelligence: #{@intelligence}"
		puts "stealth: #{@stealth}"
		puts "health: #{@health}"
		self
	end
end
