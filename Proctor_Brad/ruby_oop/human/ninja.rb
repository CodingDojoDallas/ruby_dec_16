require_relative 'human'

class Ninja < Human
    attr_accessor :strength, :intelligence, :health, :stealth

    def initialize
        super
        @stealth = 175
        self
    end

    def steal object
        object.health -= 10
        @health += 10
        self
    end

    def get_away
        @health -= 15
        self
    end
end
