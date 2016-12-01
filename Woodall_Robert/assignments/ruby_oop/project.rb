class Project
	attr_accessor :name
	attr_accessor :description
	
	def initialize(name, description)
		@name = name
		@description = description
		self
	end
	
	def elevator_pitch
		puts "#{@name}, #{@description}"
		self
	end
end

proj = Project.new("Project 1", "Description 1")
puts proj.name
puts proj.description
proj.elevator_pitch