# Basic 13 Assignment in Ruby Fundamentals #4

#  print 1-255
# for i in (1..255) 
# 	puts i end

# print only odd numbers between 1-255
# for i in (1..255) 
# 	if i % 2 ==1
# 		puts i end end

# prints sum of all numbers
# sum=0
# for i in (0..255) 
# 	puts sum+=i 
# end

# iterating through an array
# x = [1,3,5,7,9,13]
# for i in x
# 	puts i end

# Find Max
# max = 0
# x = [1,3,5,7,9,13]
#  for i in x
#  	if i>max
#  		max= i
#  	end
#  end
# puts max

# Get Average
# sum=0
# x = [1,3,5,7,9,13]
# for i in x
# 	sum = sum+i
# end
# puts sum/x.length

# Array with Odd Numbers
# y = []
# for i in (1..255)
# 	y.push(i)
# end
# puts y

# Greater Than Y
# y = [1,3,5,7,9,13]
# def Great(y, x)
# 	count= 0
# 	for i in y
# 		if i > x
# 			count+=1
# 		end 
# 	end
# 	puts count
# end
# Great(y, 5)

# Square the values
# x =[1, 5, 10, -2]
# def squareval(x)
# 	puts x.map { |i|i**2  }
# end
# squareval(x)

#Elminate negative numbers
# x =[1, 5, 10, -2]
# def eliminate(x)
# 	for i in x
# 		if i <0
# 			x.delete(i)
# 		end
# 	end
# 	puts x
# end
# eliminate(x)

# Max, Min, Average
# x =[1, 5, 10, -2]
# def MaxMinAvg(x)
# max = 0
# min = 0
# avg =0
# for i in x
# 	if i > max 
# 		max = i
# 	end
# 	if i < min
# 		min = i 
# 	end
# 	avg = avg + i
# end
# puts min
# puts max
# puts avg/x.length
# end
# MaxMinAvg(x)

# shift values in an array --work in progress
# def shiftval(array)
# array =[1, 5, 10, 7, -2]
# print array.insert(4, array.delete_at(array.length-4))
# end
# shiftval(array)

array =[1, 5, 10, 7, -2]
print array.insert(4, array.delete_at(array.length-5))








# Number to string
# x =[1, 5, 10, -2]
# def numtostring(x)
# y = []
# 	for i in x 
# 		if i <0
# 			 y.push("Dojo")
# 		elsif 
# 			y.push(i)
# 		end
# 	end
# 	puts y.to_s
# end
# numtostring(x)








# i.instance_of? String =>false
			# i.to_s 






