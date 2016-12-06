require_relative 'human'
class Ninja < Human
	def initialize(name)
		super(name)
		@stealth = 175
	end
	def get_away
		@health -= 15
		puts "#{@name} got away but health is now at #{@health}"
		self
	end
	def display_info
		puts "#{@name}'s health is #{@health}, intelligence is #{@intelligence}, strength is #{@strength}, and stealth ability is #{@stealth}"
		self
	end
	def steal(target)
		attack(target)
		self.health += 10
		puts "#{target.name}'s health is now #{target.health}"
	end
end