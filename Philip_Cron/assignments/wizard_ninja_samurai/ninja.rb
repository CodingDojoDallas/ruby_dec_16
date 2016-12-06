require_relative 'human'
require_relative 'samurai'
require_relative 'wizard'
class Ninja < Human

    def initialize
        super
        @stealth = 175
    end

    def steal(obj)
        attack(obj)
        self.health += 10
    end

    def get_away
        @health -= 15
    end
end

ninja1 = Ninja.new
samurai1 = Samurai.new
wizard1 = Wizard.new

ninja1.steal(samurai1)
samurai1.death_blow(ninja1)
wizard1.fireball(samurai1)
samurai1.meditate

puts ninja1.health
puts samurai1.health
puts wizard1.health

