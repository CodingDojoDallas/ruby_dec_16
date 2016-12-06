
class Mammal
	def initialize
		puts "I am alive!"
	end
	def breathe
		puts 'Inhale and exhale'
	end
end

class Cat < Mammal
  def jerk
    puts 'scratching you...'
    self   # same as 'return self'
  end 
  def speak  
    puts "Meow"  
    self   # same as 'return self'
  end
  def who_am_i
    puts self
    self  # same as 'return self'
  end
end  

chloe = Cat.new
chloe.who_am_i.jerk #prints the cat object + jerk method



