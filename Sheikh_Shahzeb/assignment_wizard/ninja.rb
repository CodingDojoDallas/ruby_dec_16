require_relative 'human'
class Ninja < human
	def initialize 
		@stealth = 175
		self
	end
	def steal(x)
		puts 'ninja attacked #{x}, health went up by 10'
		@health +=10
		self
	end
	def get_away
		@health -=15
		puts 'health decreased -15'
		self
	end
end

