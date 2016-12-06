class Project
    attr_accessor :name, :description, :member
    def initialize(name, description)
        @name = name
        @description = description
        @member = 0
    end
    def elevator_pitch
        "#{@name}, #{@description}"
    end
    def add_to_team
        @member += 1
    end
end
