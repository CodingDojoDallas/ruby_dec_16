require_relative 'mammal'

class Dragon < Mammal 
	def initialize
		@health = 170
		self
	end
	
	def fly
		puts "Flying, -10 Health"
		@health -= 10
		self
	end

	def attack_town
		puts "Attacking Town, -50 Health"
		@health -= 50
		self
	end

	def eat_humans
		puts "Eating Humans, +20 Health"
		@health += 20
		self
	end
end

Darrin = Dragon.new
Darrin.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
