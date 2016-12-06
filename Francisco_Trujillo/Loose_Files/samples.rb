#'I am a string'
#
#'I am an instance of'.class
#
#String.ancestors
#
#puts "24 plus 8 is #{24 + 8}" # => "24 plus 8 is 32"
#puts '24 plus 8 is #{24 + 8}' # => "24 plus 8 is #{24 + 8}"
arr = ["ant", "bear", "cat"]
arr2 =[1,2,4,5]
=begin
age = 2
if !(age<21)
	puts "Welcome to the party"
else
	puts "Not yet"
end

number = 25
if (number % 3 == 0 && number %5==0)
	puts "FizzBuzz"
elsif (number % 3 == 0)
	puts "Fizz"
elsif (number % 5 == 0)
	puts "Buzz"
end


age = 2
unless (age<21)
	puts "Welcome to the party"
else
	puts "Not yet"
end

if ("")
	puts "I am positive"
end
if (0)
	puts "I am positive"
end

unless nil
	puts "I am negative"
end
unless false
	puts "I am negative"
end

puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am negative" unless nil
puts "I am negative" unless false


i = 0
num = 5
while i <= num do
   puts "Inside the loop i = #{i}"
   i +=1
end


i = 0
num = 5
begin
   puts "Inside the loop i = #{i}"
   i +=1
end while i< num

for i in 0..5 
  puts "Value of local variable is #{i}" 
end 

puts (arr.any?{|word| word.length>3})
arr.each {|w| print w, "-"}
puts
(1..4).collect {|i| i*i}
puts


OOP
=end
class CodingDojo
	@@no_of_branches = 0
	def initialize(id,name,address)
		@branch_id = id
		@branch_name = name
		@branch_address = address
		@@no_of_branches+=1
		puts "\nCreated Branch #{@@no_of_branches}"
	end
	def hello
		puts "Hello CodingDojo"
	end
	def displayAll
		puts "Branch ID %d" % @branch_id
		puts "Branch Name %s" % @branch_name
		puts "Branch Address %s" % @branch_address
	end
end
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
branch.displayAll 
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
branch2.displayAll


