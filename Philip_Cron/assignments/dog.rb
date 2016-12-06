puts 'I am in the dog file'
require_relative 'mammal'

class Dog < Mammal
    def initialize
        @health = 150
    end
    def pet
        @health += 5
        puts display_health
        self
    end
    def walk
        @health -= 1
        puts display_health
        self
    end
    def run
        @health -= 10
        puts display_health
        self
    end
end
dog = Dog.new.walk.walk.walk.run.run.pet.display_health