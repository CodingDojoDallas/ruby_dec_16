class Stack
	attr_accessor :stack
	attr_reader :back
	def initialize
		@stack =[]
		@value = 0
		@back = 0
	end
	def data_store
		p @stack
	end
	def last_val
		@back = @stack[@stack.length-1]
		
	end
	def push(val)
		@stack[@stack.length]=val
	end
	def pop
		if @stack
			i=0
			newArr = []
			for i in 0...@stack.length-1
				newArr[i] = @stack[i]
			end
			@stack = newArr
		else
			nil
		end
		
	end
end