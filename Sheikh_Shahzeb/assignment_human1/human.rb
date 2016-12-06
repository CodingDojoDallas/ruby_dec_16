class Human
	attr_accessor :strength, :intelligence, :stealth, :health
	def initialize
		@health = 100
		@strength = 3
		@stealth = 3
		@intelligence = 3
		self
	end
	def attack(x='enemy')
		if x.class.ancestors.include?(Human)
			obj.health -=10
			puts 'you attacked another human, human health went down by 10'
			true
			self
		else
			false
			self
		end
	end
end
Jeff = Human.new
