require_relative 'mammal'

class Dragon < Mammal
	def initialize
		@health = 170
	end

	def fly
		@health -= 10
		self
	end

	def attack_town
		@health -= 50
		self
	end

	def eat_humans
		@health += 20
		self
	end
	def displayHealth
		puts "This is a motherfuckin Dragon, ya'll"
		self.display_health
		self
	end
end

puff = Dragon.new

puff.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.fly.displayHealth