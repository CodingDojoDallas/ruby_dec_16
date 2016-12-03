class Project
	attr_accessor :name, :description
	def initialize(name, description)
		@name = name
		@description = description
		self
	end
	def elevator_pitch
		puts @name + ', ' + @description
		self
	end
end

project1 = Project.new("Project 1", "This is a great Project")
puts project1.name
project1.elevator_pitch