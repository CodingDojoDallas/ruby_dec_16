require_relative 'human'

class Ninja < Human

    def initialize
        super()

        @stealth = 175
    end

    def steal(enemy)
        attack(enemy)
        @health = @health + 10
    end

    def get_away
        @health = @health - 15
    end

end
