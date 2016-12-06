my_array = (1..8)
# will create and array of numbers from 1 to 8
alphabet = "a"..."z"

# .member?(val) => true or false
puts my_array.member?(2)
puts my_array.member?("g")
# should return true
puts alphabet.member?("CodingDojo")
# should return false

# .include?(value) => true or false
puts my_array.include?(8)
puts alphabet.include?("x")
# should return true
puts my_array.include?(12)
puts alphabet.include?("X")
puts alphabet.include?("hi")
# should return false

# .last => returns the last object in range
puts my_array.last
puts alphabet.last

# .max => returns the maximum value in range
puts my_array.max

# .min => returns the minimum value in range
puts alphabet.min
