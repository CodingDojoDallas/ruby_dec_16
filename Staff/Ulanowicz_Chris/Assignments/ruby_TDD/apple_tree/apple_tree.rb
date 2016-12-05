class AppleTree
	attr_accessor :height, :age, :apples

	def initialize
		@height = 0
		@age = 0
		@apples = 0
	end

	def year_gone_by
		@age += 1
		if @age < 10
			@height += 4
		else
			@height -= 3
		end
		if @age < 4 || @age > 10
			@apples = 0
		else
			@apples += 50
		end
		p "Tree is now #{age} years old and is #{height} feet tall"
	end

	def pick_apples
		@apples = 0
	end
end