class Project
	attr_accessor :project_name, :project_description
	def initialize(p_name, p_description)
		@project_name= p_name
		@project_description= p_description
		@team_member =[]
		self
	end
	def elevator_pitch
	p "project name is #{project_name} and project description is #{project_description}"
	end
	def add_to_team(x)
		puts "just added new member #{x}!"
		@team_member.push(x.to_s)
	end
end
# project1 = Project.new("Dolphin", "enterprise")
# puts project1.project_name #prints out Project 1
# project1.elevator_pitch.add_to_team('Jerrod') #prints out 'Project 1, Description 1"