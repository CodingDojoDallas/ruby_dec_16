load 'planet.rb'

class SolarSystem

    attr_accessor :name, :num_planets, :planets

    def initialize(name="")
        if name != ""
            @name = name
        else
            @name  = "Andromeda"
        end

        @num_planets = 0
        @planets = []

    end

    def AddPlanet(planet)
        @planets.insert(-1, planet)
    end

    def NumPlanets()
        return @planets.length()
    end

    def SuperNova()
        @planets.clear()
    end

end
