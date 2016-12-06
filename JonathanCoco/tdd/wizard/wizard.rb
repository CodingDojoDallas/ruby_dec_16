require_relative 'human'

class Wizard < Human

    def initialize
        super()

        @intelligence = 25
        @health = 50
    end

    def heal
        @health = @health + 10
    end

    def fireball(enemy)
        if enemy.class.ancestors.include?(Human)
            enemy.health = enemy.health - 20
            return true
        end

        return false
    end

end
