class Mammal
	attr_accessor :health
	def initialize
		@health=150
	end
	def display_health
		puts "Health is #{@health}"
	end
end
