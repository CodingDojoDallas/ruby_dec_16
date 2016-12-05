require_relative 'human'

class Wizard < Human
    attr_accessor :strength, :intelligence, :health, :stealth

    def initialize
        super
        @intelligence = 25
        @health = 50
    end

    def heal
        @health += 10
    end

    def fireball object
        object.health -= 20
    end
end
