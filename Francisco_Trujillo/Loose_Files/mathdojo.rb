class MathDojo
	@@results = 0
	def checkArr (n)
		if n.is_a? Array
			return n.reduce(:+)
		else
			return n
		end
	end
			
	def add(n1, n2=0)
		
		@@results+=self.checkArr(n1)+self.checkArr(n2)
		self
		
	end
	def subtract(n1,n2=0)
		@@results-=self.checkArr(n1)+self.checkArr(n2)
		self
	end
	def answer
		puts "results #{@@results}"
		self
	end
end
MathDojo.new.add(2).add(2, 5).subtract(3, 2).answer
MathDojo.new.add(1).add([3,5,7,8],[2,4.3,1.25]).subtract([2,3], [1.1,2.3]).answer