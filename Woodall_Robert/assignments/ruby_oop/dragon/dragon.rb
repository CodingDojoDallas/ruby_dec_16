require_relative "mammal"

class Dragon < Mammal
	def fly
		puts "kissing the sky..."
		@health -= 10
		self
	end
	
	def attack_town
		puts "spittin hot fire on the town..."
		@health -= 50
		self
	end
	
	def eat_humans
		puts "stuffing face full of humans..."
		@health += 20
		self
	end
	
	def display_health
		puts "Dragon health!"
		super
	end
end

Dragon.new.display_health
.attack_town.display_health
.attack_town.display_health
.attack_town.display_health
.eat_humans.display_health
.eat_humans.display_health
.fly.display_health
.fly.display_health