class Project
	attr_accessor :name, :descrip, :team_member
	def initialize(p_name, p_descrip)
		@name = p_name
		@descrip = p_descrip
		@team_member = ""		
	end
	def elevator_pitch
		p "#{@name}, #{@descrip}"		
	end
	def add_to_team(team_member_name)
		@team_member = team_member_name
	end
end

# project1 = Project.new("Project 1", "Description 1")
# puts project1.name
# project1.elevator_pitch
# project1.add_to_team("Sally")
# puts project1.team_member