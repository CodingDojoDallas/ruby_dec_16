require_relative 'human'
class Wizard < Human
	def initialize(name)
		super(name)
		@health = 50
		@intelligence = 25
	end
	def heal
		@health += 10
		p "#{@name} has been healed up to #{@health}"
		# self
	end
	def display_info
		print "#{@name}'s health is #{@health}, intelligence is #{@intelligence}, strength is #{@strength}, and stealth ability is #{@stealth}"
		self
	end
	def fireball(target)
		attack(target)
		target.health -= 10
		p "#{target.name}'s health is now #{target.health}"
	end
end
