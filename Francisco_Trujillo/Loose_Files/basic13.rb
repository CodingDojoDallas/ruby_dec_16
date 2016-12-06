r1 = (1..255)
r2 = (0..255)
x = [1,3,5,7,9,13]
w = [1,5,10,-2]
puts "prints number 1 -255"

r1.each{|n| print n.to_s, " "}

puts 
puts"Print odd number from 1 to 255"

puts r1.reject {|n| n%2==0}
puts 
puts "Print Sum"


def sum r
	sum = 0
	for i in r		
		puts "New Number: #{i} Sum: #{sum += i}"
	end
end

sum r2

puts
puts "iterating through an Array"

x.each {|n| print n.to_s, " "}

puts
puts "Finding Max"
print x.max

puts
puts "Get Avarage"
puts x.reduce(:+)/x.length

puts

puts"Print array  y from 1 to 255"

y= r1.reject {|n| n%2==0}
print y
puts "Grater then y"
puts
y = 3
z = [1,3,5,7]
print z.find_all{|i| i>y}
puts

puts "Square values"
print w.collect{|i| i*i}
puts

puts " Eliminate Neg Numbers"
w.each {|i| if i>0 then puts i else puts 0 end}

puts

puts "Max Min Average"
def MaxMinAvg arr
	puts "Max number: #{arr.max}"
	puts "Min number: #{arr.min}"
	puts "Average: #{arr.reduce(:+)/arr.length}"
end
MaxMinAvg w
def shift arr
	counter = 0
	arr.each{arr[counter]=arr[counter+=1]}
	arr[arr.length-1]=0
	print arr
end
puts
shift w

puts "Numbers to string"
[-1,-3,2].each {|i| if i>0 then puts i else puts "Dojo" end}

puts