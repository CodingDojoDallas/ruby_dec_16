require_relative 'human'

class Samurai < Human
    attr_accessor :strength, :intelligence, :health, :stealth

    def initialize
        super
        @health = 200
        @@count += 1
        self
    end

    def death_blow object
        object.health = 0
        self
    end

    def meditate
        @health = 200
        self
    end

    def how_many
        puts "There are #{@@count} Samurais"
        self
    end
end

brad = Samurai.new
ben = Samurai.new
