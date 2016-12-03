class MathDojo
	attr_accessor :result
	def initialize(num_1=0)
		@result =num_1
		self
	end
	def add(*x)
		if x.class == Array
			@result +=x.flatten.reduce(:+)
		else
			result += x
		end
		self
	end
	def subtract(*x)
		if x.class == Array
			@result =+x.flatten.reduce(:+)
		else
			results -=x
		self
	end
	end
end
flipper = MathDojo.new
puts flipper.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3])
