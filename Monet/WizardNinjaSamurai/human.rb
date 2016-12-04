class Human
	attr_accessor :strength, :intelligence, :stealth, :health
	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end
	def attack(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -=10
			true
		else
			false
		end
	end
end

# #Test
# Bob = Human.new
# Charlie = Human.new
# x=["person"]
# Charlie.attack(Bob)
# puts Charlie.health
# puts Bob.health
# puts Bob.attack(x)