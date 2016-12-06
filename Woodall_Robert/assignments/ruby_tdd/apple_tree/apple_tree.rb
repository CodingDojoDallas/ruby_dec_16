class AppleTree
	attr_accessor :height, :age
	attr_reader :apple_count
	
	def initialize
		@apple_count = 0
		@height = 1
		@age = 0
	end
	
	def year_gone_by
		@age += 1
		@height += 1
		
		if @age > 3
			@apple_count += 10
		elsif @age > 10
			@apple_count = 0
		end
	end
	
	def pick_apples
		@apple_count = 0
	end
end