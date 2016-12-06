require_relative "human"

class Ninja < Human
	attr_accessor :health
	
	def initialize
		super
		@health = 175
		self
	end
	
	def steal
		@health += 20
		self
	end
	
	def get_away
		@health -= 10
		self
	end
	
	def displayStats
		puts "\nNinja stats..."
		puts "strength: #{@strength}"
		puts "intelligence: #{@intelligence}"
		puts "stealth: #{@stealth}"
		puts "health: #{@health}"
		self
	end
end
