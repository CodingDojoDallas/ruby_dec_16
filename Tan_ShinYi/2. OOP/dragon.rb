require_relative 'mammal'

class Dragon < Mammal
  def initialize
    @health = 170
    self
  end

  def fly
    @health -= 10
    puts "Dragon is flying and health is now #{@health}"
    self
  end

  def attack_town
    @health -=50
    puts "Dragon is attacking town and health is now #{@health}"
    self
  end

  def eat_humans
    @health +=20
    puts "Dragon is eating humans and health is now #{@health}"
    self
  end

  def displayHealth
    puts "This is a dragon!"
    self.display_health
  end

end

Dragon.new.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.displayHealth
