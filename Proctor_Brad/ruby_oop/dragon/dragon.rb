require_relative 'mammal'

class Dragon < Mammal
    def fly
        puts "Dragon is flying... loses 10 health"
        @health -= 10
        self
    end

    def attack_town
        puts "Dragon attacks the town... loses 50 health"
        @health -= 50
        self
    end

    def eat_humans
        puts "Dragon has dinner... gains 20 health"
        @health += 20
        self
    end
end

fluffy = Dragon.new
fluffy.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
