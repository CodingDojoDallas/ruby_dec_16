class Planet
    attr_accessor :name, :description, :population
    def initialize
        @name = name
        @description = description
        @population = population
    end
end
class Solar_System < Planet
    attr_accessor :name, :planets
    def initialize(name = 'Andromeda')
        @name = name
        @planets = []
    end
    def count_planets
        "There are a total of #{@planets.length} planets"
    end
    def add_planets(planet)
        if planet.class.ancestors.include?Planet
            @planets.push(planet.name)
        end
    end
    def super_nova
        @planets = []
    end
end


