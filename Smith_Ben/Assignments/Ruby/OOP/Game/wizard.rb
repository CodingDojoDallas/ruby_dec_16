
require_relative 'human'

class Wizard < Human
	def initialize
		super
		@health = 50
		@intelligence = 25
		self
	end

	def heal
		@health += 10
		self
	end

	def fireball(obj)
		obj.health -= 20
		self
	end

	def results
		puts "Health is #{@health}"
		puts "Strength is #{@strength}"
		puts "intelligence is #{@intelligence}"
		puts "Stealth is #{@stealth}"
		self
	end
end

Ben = Wizard.new
Brad = Wizard.new
Ben.fireball(Brad).heal.results
Brad.results