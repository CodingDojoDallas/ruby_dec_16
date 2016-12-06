class Human

	attr_accessor :strength, :intelligence, :stealth, :health, :name

	def initialize(name)
		@name = name
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end
	def attack(target)
		if target.class.ancestors.include?(Human)
			target.health -= 10
			puts "Hit on #{target.name} was successful"
		else
			self.health -= 5
			puts "Your target wasn't human and bit back!"
		end
		self.display_health
		true
	end
	def display_health
		puts "#{@name}'s health is #{@health}"
	end
end