require_relative 'mammal'


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
chloe.jerk.speak.breathe.who_am_i