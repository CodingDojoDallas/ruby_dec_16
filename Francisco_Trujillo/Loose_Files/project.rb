class Project
	attr_accessor :name, :description
	def initialize(nm, des)
		@name = nm
		@description = des
	end
	def name
		puts @name
	end
	def elevator_pitch
		puts @name
		puts @description
	end
end

paper = Project.new("Paper Conversion","Cut the paper to a certain size")
	
paper.name
paper.elevator_pitch
