class Project
	attr_accessor :name, :description, :member
	def initialize(nm, des)
		@name = nm
		@description = des
		@member = 0
	end
	def elevator_pitch
		"#{@name}, #{@description}"
		
	end
	
	def add_to_team
		@member +=1 
	end
end

#paper = Project.new("Paper Conversion","Cut the paper to a certain size")
#	
#paper.name
#paper.elevator_pitch
