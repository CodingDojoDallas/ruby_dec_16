#just exercise

# puts "hello"
# puts "coding"
# puts "dojo"



BEGIN {
	puts "Begin Block"
}
END {
	puts "End Block"
}

# x = 5; y = 10; z = x+y

# puts z

#first_name = "Ben"
#last_name = "Smith"

#puts "Your name is "
#puts first_name
#puts last_name

# or

#puts "Your name is ", first_name, last_name

#or

#puts "Your name is "+first_name+" "+last_name

#puts "First name is #{first_name} and last name is #{last_name}"

# z = 50
# puts "value of z is #{z}"


# puts "I am 5'10\" tall"

#    \t = tab
#    \n = new line


# x = 3

# if x > 2
# 	puts "#{x} is greater than 2"
# elsif x < 2 and x > 0
# 	puts "x is 1"
# else 
# 	puts "I cant guess the number"
# end

# puts 1 if 0
# puts 2 if ""
# puts 3 if nil


a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]

puts a+b

x = (a+b) - c

puts x.to_s


puts a.shuffle

puts a.shuffle.join('-')

puts a.delete("Choi")
	puts a

puts a.reverse

puts a.length

puts b.sort
puts b.sort { |a,z| z <=> a}

puts a.slice(3)

puts a.insert(2, "Ben")

puts a.at(2)
















