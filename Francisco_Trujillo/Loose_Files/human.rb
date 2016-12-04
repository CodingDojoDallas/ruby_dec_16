class Human
	attr_accessor :strength, :stealth, :intelligence, :health
	def initialize
		@strength =3
		@stealth =3
		@intelligence =3
		@health = 100
	end
	def attack(object)		
		if object.class.ancestors.include? Human
			object.health-=10
			true
		else
			false
		end
		self
	end
end
eragon = Human.new
eragon.attack(eragon)
print eragon.health

class Wizzard < Human
	def initialize
		super
		@health = 50
		@intelligence = 25
		
	end
	def heals
		@health+=10
	end
	def fireball(object)
		attack(object)
		object.health-=20
	end
end
class Ninja < Human
	def initialize
		super
		@stealth = 175
		
	end
	def steal(object)
		attack(object)
		self.health+=20
		self
	end
	def get_away
		@health -=15
	end
end
class Samurai < Human
	@samuraiNum=0
	class << self
		attr_accessor :samuraiNum
	end
	def initialize
		super
		@health = 200
		self.class.samuraiNum+=1
		
	end
	def death_blow(object)
		attack(object)
		object.health=0
		self
	end
	def meditate
		@health = 200
	end
	def how_many
		print "There are #{self.class.samuraiNum} Samurais"
		self
	end
end

sensei = Samurai.new
sensei.how_many
kata = Ninja.new
kata.steal(sensei)
kata.health


