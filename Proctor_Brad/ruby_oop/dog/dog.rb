require_relative 'mammal'

class Dog < Mammal
    def pet
        puts "Petting the dog... Gain 5 health!"
        @health += 5
        self
    end

    def walk
        puts "Walking the dog... Lose 1 health."
        @health -= 1
        self
    end

    def run
        puts "Running the dog... Lose 10 health."
        @health -= 10
        self
    end
end

fido = Dog.new
fido.walk.walk.walk.run.run.pet.display_health
