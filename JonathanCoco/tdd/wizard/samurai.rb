require_relative 'human'

class Samurai < Human

    @@num_samurai= 0

    def initialize
        super()

        @@num_samurai = @@num_samurai + 1

        @health = 200
    end

    def death_blow(enemy)

        if attack(enemy)
            enemy.health = 0
        end
    end

    def meditate
        @health = 200
    end

    def get_away
        @health = @health - 15
    end

    def how_many
        puts "there  are  #{@@num_samurai} samuari"
    end
end
