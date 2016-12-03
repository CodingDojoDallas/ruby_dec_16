
#----------number 1---------------------------------
array = [3,5,1,2,7,9,8,13,25,32]
puts array.reduce :+  #105
puts array.reject { |i| i < 11 }

#----------number 2---------------------------------
x = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts x.shuffle!
puts x.reject {|i| i.length < 6}

#----------number 3---------------------------------
x = ("a".."z").to_a.shuffle
vowel = "aeiou"
puts x.last
puts x.first
if vowel.include? x.first
	then puts "First letter vowel"
end

#---------number 4----------------------------------
arr = []
i = 0
while i < 10 do
	x = 55 + rand(45)
	arr.push(x)
	i += 1
end
puts arr

#---------number 5----------------------------------
arr = []
i = 0
while i < 10 do
	x = 55 + rand(45)
	arr.push(x)
	i += 1
end
puts arr.sort
puts arr.min
puts arr.max

#---------number 6----------------------------------
puts (0...5).map {(65+rand(26)).chr}.join

#---------number 7----------------------------------
arr = []
i = 0
while i < 10 do
	x = (0...5).map {(65+rand(26)).chr}.join
	arr.push(x)
	i += 1
end
puts arr.to_s
















