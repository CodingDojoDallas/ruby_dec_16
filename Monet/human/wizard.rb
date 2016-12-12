#Monet Harkin

require_relative 'human'
class Wizard < Human
	def initialize
		super
		@intelligence = 25
		@health = 50
	end
	def heal
		@health +=10		
	end
	def fireball(obj)
		if obj.class.ancestors.include?(Human)
			obj.health-=20			
		end
	end
end

w1= Wizard.new
w2= Wizard.new
w3= Wizard.new
w1.heal
w2.fireball(w3) #w2 is attacking w3 - decreasing w3 health
p "Wizard 1 health"
p w1.health
p "Wizard 2 health"
p w2.health
p "Wizard 3 health"
p w3.health
