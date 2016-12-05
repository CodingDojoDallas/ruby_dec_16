class Project
    attr_accessor :name, :description
    def initialize name, description
        @name = name
        @description = description
        @team_members = 0
        self
    end

    def elevator_pitch
        "#{@name}, #{@description}"
    end

    def add_to_team
        @team_members += 1
    end
end

project1 = Project.new "Project 1", "Description 1"
puts project1.name
project1.elevator_pitch
