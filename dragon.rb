require_relative 'mammal'

class Dragon < Mammal
  def initialize
    @health = 170
    self
  end
  def fly
    @health -= 10
    self
  end
  def attack_town
    @health -= 50
    self
  end
  def eat_humans
    @health += 20
    self
  end
  def dis_health
    puts "this is a Dragon! My health is #{@health}"
  end
end

arogon = Dragon.new.attack_town.attack_town.attack_town.fly.fly.dis_health
