
require_relative 'human'

class Ninja < Human
	def initialize
		super
		@stealth = 175
		self
	end

	def steal(obj)
		@health += 10
		obj.health -= 10
		self
	end

	def get_away
		@health -= 15
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


Ben = Ninja.new
Brad = Ninja.new
Ben.steal(Brad).get_away.results
Brad.results
