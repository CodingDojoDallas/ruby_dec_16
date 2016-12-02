# Hashes assignemtn in Ruby fundamentals #3


a = {"1st stack"=> "Ruby",
	"2nd stack"=>"PHP",
	"3rd stack"=>"C++",
	"4th stack"=>"Python",
	"5th stack"=>"Java"}

# .delete method on an array
 a.delete("1st stack")
 puts a

# .empty? method on an array
puts a.empty?

# .has_key method on an array
puts a.has_key?("1st stack")

# .has_value method on an array, returns true if it exists in a hash as a value
puts a.has_value?("Java")
