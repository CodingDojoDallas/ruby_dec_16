require_relative 'mammal'

class Dog < Mammal
  def initialize
    @health = 150
    super
  end
  def pet
    @health += 5
    return self
  end

  def walk
    @health += 1
    return self
  end

  def run
    @health -= 10
    return self
  end
end

Ava = Dog.new
Ava.pet.walk.walk.walk.run.run.display_health


class Dragon < Mammal
  def initialize
    @health = 170
    super 
  end

  def fly
    @health += 10
    return self
  end

  def attack_town
    @health -= 50
    return self
  end

  def eat_humans
    @health += 20
    return self
  end

  def display_health
    puts "I am a dragon!"
    super
  end
end

Aragon = Dragon.new
Aragon.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
