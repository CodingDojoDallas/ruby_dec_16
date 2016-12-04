class Project
	attr_accessor :name, :description, :team
	
	def initialize(name, desc)
		@name = name
		@description = desc
		@team = []
		self
	end
	
	def elevator_pitch
		"#{@name}, #{@description}"
	end
	
	def add_to_team(newMember)
		@team.push(newMember)
	end
end
