require_relative 'mammal'
class Cat < Mammal
	def jerk
		puts 'clawing your eyes out'
		self
	end
	def speak
		puts "Meow"
		self
	end
	def identity
		puts self
		self
	end
end
Kingston = Cat.new

Kingston.jerk.speak.identity