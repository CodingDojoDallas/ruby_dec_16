class Mammal
	attr_accessor :health
	def initialize
		@health = 150
	end
	def healths
		puts "The animal health is #{@health}"
		self
	end
end
