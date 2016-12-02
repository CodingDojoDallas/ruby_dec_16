
require_relative 'human'

class Samurai < Human
	@@num_of_samurais = 0
	def initialize
		super
		@health = 200
		@@num_of_samurais += 1
		puts
		self
	end

	def death_blow(obj)
		while obj.health > 0
			obj.health -= 1
		end
		self
	end

	def meditate
		while @health < 200
			@health += 1
		end
		self
	end

	def results
		puts "Health is #{@health}"
		puts "There are #{@@num_of_samurais} Samurais"
		self
	end
end



Ben = Samurai.new
Brad = Samurai.new
puts Ben.death_blow(Brad).results
puts Brad.results
puts Brad.meditate.results
