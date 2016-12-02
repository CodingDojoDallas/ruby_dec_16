class SolarSystem
    attr_accessor :name, :planets
    def initialize(name="Andromeda")
        @name = name
        @planets = []
    end

    def count
        @planets.count
    end

    def super_nova
        @planets = []
    end
end

class Planet < SolarSystem
    attr_accessor :name, :description, :population

    def add_planet name, description, population
        @planets << name
        @name = name
        @description = description
        @population = population
    end
end
