require_relative 'mammal'
class Dragon < Mammal
	def initialize
		@health=170
		super
		self
	end
	def display_health
		super
		puts"this is a dragon"
	end
	def fly
		@health -=10
		puts 'health went down by 10'
		self
	end
	def attack_town
		@health -=50
		puts 'health went down by 50'
		self
	end
	def eat_humans
		@health +=20
		puts'health went up by 20'
		self
	end
end

Shenron = Dragon.new
Shenron.attack_town().attack_town().attack_town().eat_humans().eat_humans().fly().fly().display_health()

