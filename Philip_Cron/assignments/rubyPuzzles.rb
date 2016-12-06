Problem 1

myArr = [3,5,1,2,7,9,8,13,25,32]

Sum

sum = 0
(myArr).each { |n| puts "New number: #{n} Sum: #{sum+=n}" }

Greater than 10

myArr.each { |n| puts n if n > 10 }

Problem 2

myArr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"].shuffle
puts myArr
puts "-----------if longer than 5----------"
myArr.delete_if { |i| i.length < 5 }
puts myArr

Problem 3

myArr1 = ("A".."Z").to_a
puts myArr1
puts "-------------------"
myArr2 = ("A".."Z").to_a.shuffle
puts myArr2
puts "-------------------"
puts myArr1[0]
puts myArr1[-1]
puts "-------------------"
puts "Letter is a vowel" if myArr1[0] =~ /[aeiou]/ ???

Problem 4
x = []
10.times{|i| x.push(i=rand(55..100))}
puts x

Problem 5

x = []
10.times{|i| x.push(i=rand(55..100))}
puts x.sort
puts "-------------------"
puts x.min
puts "-------------------"
puts x.max

Problem 6

a = []
(1..5).each {|i| a.push((65+rand(26)).chr) }
puts a.join

Problem 7

x = []
10.times{|i| x.push((1..5).collect {|i| i = (65+rand(26)).chr}.join)}

puts x




