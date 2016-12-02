class Human
    attr_accessor :strength, :intelligence, :health, :stealth

    @@count = 0

    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
        self
    end

    def attack object
        if object.class.ancestors.include? Human
            object.health -= 10
        end
        self
    end
end
