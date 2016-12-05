<<<<<<< HEAD
require_relative 'mammal'
class Dog < Mammal
  def pet
    @health = @health + 5
    puts "You pet the dog its health is now #{@health}"
    self
  end
  def walk(*num)
    @health = @health - 1
    puts "You walk the dog its health is now #{@health}"
    self
  end
  def run
    @health = @health - 10
    puts "You run with your dog its health is now #{@health}"
    self
  end
end
lingling = Dog.new
lingling.walk.walk.walk.run.run.pet.display_health
=======
require_relative 'mammal'
class Dog < Mammal
  def pet
    @health = @health + 5
    puts "You pet the dog its health is now #{@health}"
    self
  end
  def walk(*num)
    @health = @health - 1
    puts "You walk the dog its health is now #{@health}"
    self
  end
  def run
    @health = @health - 10
    puts "You run with your dog its health is now #{@health}"
    self
  end
end
lingling = Dog.new
lingling.walk.walk.walk.run.run.pet.display_health
>>>>>>> upstream/master
