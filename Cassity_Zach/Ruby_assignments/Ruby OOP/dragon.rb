require_relative 'mammal'
class Dragon < Mammal
  def initialize
  @health = 170
  end
  def fly
    @health -= 10
    puts "You fly with your dragon its health is now #{@health}"
    self
  end
  def attack_town
    @health -= 50
    puts "Your dragon attacks a town its health is now #{@health}"
    self
  end
  def eat_humans
    @health += 20
    puts "Your dragon just ate me.... its health is now #{@health}"
    self
  end
  def display_health
    puts "This is a dragon!"
    super
  end
end
tim = Dragon.new
tim.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
