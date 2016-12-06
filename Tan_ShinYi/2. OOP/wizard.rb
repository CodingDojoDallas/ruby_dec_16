require_relative 'human'

class Wizard < Human
  def initialize
    super
    @health=50
    @intelligence=25
  end

  def heal
    @health +=10
    puts "Wizard is healing... Health: #{@health}"
  end

  def fireball victim
    victim.health -=20
    puts "Wizard threw a fireball at #{victim}! Victim's health is now #{victim.health}"
  end
end
