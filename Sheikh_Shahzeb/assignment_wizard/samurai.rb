require_relative 'human'
class Samurai < Human
	@@samurai_count = 0
	def initialize 
		@health = 200
		@@samurai_count +=1
		self
	end
	def death_blow(x)
		x.health =0
		puts "dang, you killed that thing!"
		self
	end
	def meditate
		@health = 200
		puts "health is now full at #{@health}!"
		self
	end
	def how_many
		puts "there are #{@@samurai_count} samurai"
		self
	end
end
Jerrod = Samurai.new
Jerrod.how_many.meditate

