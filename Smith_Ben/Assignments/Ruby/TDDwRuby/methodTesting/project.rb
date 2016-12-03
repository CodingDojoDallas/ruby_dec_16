class Project
	@@team_members = 0
	attr_accessor :name, :description

	def initialize(name, description)
		@name = name
		@description = description
	end

	def elevator_pitch
		"#{@name} #{@description}"
	end

	def add_to_team
		@@team_members += 1
	end
end

# project1 = Project.new("Project 1", "description 1")
# project2 = Project.new("Project 2", "description 2")



# class Project
#   attr_accessor :name, :description
#   def initialize name, description
#     @name = name
#     @description = description
#   end
#   def elevator_pitch
#     "#{@name}, #{@description}"
#   end
# end