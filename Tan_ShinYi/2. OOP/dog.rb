require_relative 'mammal'

class Dog < Mammal
  def pet
    @health += 5
    puts "Dog is being pet and health is now #{@health}"
    self
  end
  def walk
    @health -=1
    puts "Dog is walking and health is now #{@health}"
    self
  end
  def run
    @health -=10
    puts "Dog is running and health is now #{@health}"
    self
  end

end

Dog.new.walk.walk.walk.run.run.pet.display_health
