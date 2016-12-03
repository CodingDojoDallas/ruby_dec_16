require_relative 'mammal'

class Cat < Mammal
    def jerk
        puts 'scratching you...'
        self
    end

    def speak
        puts 'Meow'
        self
    end

    def who_am_i
        puts self
        self
    end
end

chloe = Cat.new
chloe.speak.who_am_i.jerk
