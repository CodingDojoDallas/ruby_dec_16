# problem 1 print 1 - 255
#(1..255).each {|x| puts x }


# problem 2

#puts (1..255).select(&:odd?)

#problem number 3

#sum = 0
#(1..255).each {|x| puts "New number: #{x} Sum: #{sum+=x}" }

#problem number 4
#arr = [1, 3, 5, 7, 9, 13]

#arr.each {|x| puts x }

# problem 5

#arr = [1, 3, 5, 7, 9, 13]

#puts arr.max

#problem 6

#arr = [1, 3, 5, 7, 9, 13]

#puts arr.reduce(:+) /arr.size

#problem number 7
#y = (1..255).select(&:odd?)
#puts y

#problem number 8

#arr = [1, 3, 5, 7, 9, 13]
#y = 4
#counter = 0
#arr.each {|arr| counter +=1 if arr > 4}
#puts counter

# number 9

#x = [1, 5, 10, -2]
#x.each {|x| puts x = x*x}

# Number 10
#x = [1, 5, 10, -2]
#x.each {|x| if x > 0 then puts x else puts 0 end}

#number 11

#x = [1, 5, 10, -2]
#max = x[0]
#min = x[0]
#x.each {|x| max=x if x>max }
#x.each {|x| min=x if x<min }
#puts "Max = #{max}"
#puts "Min = #{min}"
#puts "Average = #{x.reduce(:+) / x.size.to_f}"

#Number 12

#x = [1, 5, 10, 7, -2]
#counter = 0
#x.each { x[counter] = x[counter+=1]}
#x[x.size-1] = 0
#puts x

#number 13

x = [-1, -3, 2]
x.each {|x| if x<0 then puts "Dojo" else puts x end }
  
