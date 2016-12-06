myObj = { fname: "Rob", lname: "Woody" }

# delete
puts "myObj before deletion #{myObj}"
myObj.delete(:fname)
puts "myObj after deletion #{myObj}"

# empty?
puts "\nmyObj empty?"
puts myObj.empty?

# has_key?
puts "\nmyObj has_key fname?"
puts myObj.has_key?("fname")

# has_value?
puts "\nmyObj has_value 'Woody'?"
puts myObj.has_value?("Woody")