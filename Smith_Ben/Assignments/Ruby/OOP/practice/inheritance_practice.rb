# class ParentClass
# 	def a_method
# 		puts 'b'
# 	end
# end
# class SomeClass < ParentClass # --> SomeClass can now inherit from ParentClass
# 	def another_method
# 		puts 'a'
# 	end
# end
# instance = SomeClass.new
# instance.another_method # --> "a"
# instance.a_method  # --> "b"


class Mammal
	def initialize
		puts "I am alive!"
	end
	def breathe
		puts 'Inhale and exhale'
	end
end

class Cat < Mammal
	def jerk
		puts "scratching you..."
	end
	def speak
		puts "Meow"
	end
end

chloe = Cat.new #creates a new class called Cat, prints "I am alive"
chloe.jerk #prints 'scratching you'
chloe.speak #prints 'Meow'
chloe.breathe #can access the Mammal methods as well