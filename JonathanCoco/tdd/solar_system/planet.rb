class Planet

    attr_accessor :name, :description, :population

    def initialize(name, description="", population=0)
        @name = name
        @description = description
        @population = population
    end

end
