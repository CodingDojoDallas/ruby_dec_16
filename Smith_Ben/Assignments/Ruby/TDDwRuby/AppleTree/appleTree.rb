
class Apple_Tree
	attr_accessor :height,:age,:apples
	def initialize
		@height = 0
		@age = 0
		@apples = 0
	end

	def count
		@apples
	end

	def years_gone_by
		@age += 1
		@height += 2 unless age > 10
		if @age > 2 && @age < 10 then
			@apples += 15
		end
		"#{@age}, #{@height}"
	end

	def pick_apples
		@apples = 0
	end
end
