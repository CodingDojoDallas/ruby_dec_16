class MathDojo
	attr_accessor :result
	
	def initialize
		@result = 0
		self
	end
	
	def add(a = 0, b = 0)
		a = a.respond_to?(:reduce) ? a.reduce(:+) : a
		b = b.respond_to?(:reduce) ? b.reduce(:+) : b
		
		@result += (a + b)
		self
	end
	
	def subtract(a = 0, b = 0)
		a = a.respond_to?(:reduce) ? a.reduce(:+) : a
		b = b.respond_to?(:reduce) ? b.reduce(:+) : b
		
		@result -= (a + b)
		self
	end
end

puts MathDojo.new.add(2).add(2,5).subtract(3,2).result
puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result