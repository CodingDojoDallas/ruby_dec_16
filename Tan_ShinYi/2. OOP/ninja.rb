require_relative 'human'

class Ninja < Human
  def initialize
    super # this line is necessary to inherit the intalize method from parent
    @stealth=175
  end

  def steal victim
    self.attack(victim)
    @health+=10
    puts "Ninja stole from #{victim} and now #{victim}'s health is #{victim.health} and ninja's health is #{@health}"
  end

  def get_away
    @health -=15
    puts "Ninja got away! But health is now #{@health}."
  end
end
