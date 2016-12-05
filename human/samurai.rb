#Monet Harkin

require_relative 'human'

class Samurai < Human
	attr_reader :no_of_samurai
	@@no_of_samurai = 0
	def initialize
		super
		@health = 200
		@@no_of_samurai += 1
		puts "\nInitialized Samurai #{@@no_of_samurai}"
	end
	def death_blow(obj)
		attack(obj)
		obj.health = 0		
	end
	def meditate
		@health =200		
	end
	def how_many
		@@no_of_samurai
	end
end

s1=Samurai.new
s2=Samurai.new
s3=Samurai.new
s3.death_blow(s2)
p s2.health
p s3.health
p s2.how_many