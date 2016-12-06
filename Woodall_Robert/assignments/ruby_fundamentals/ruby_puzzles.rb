def printArrayThenSome(myArr)
	myArr.each { |i| print i, " " }
	
	return myArr.delete_if { |i| i < 10 }
end

def shuffleArrayThenSome(myArr)
	print "original ", myArr, "\n"
	print "shuffled ", myArr.shuffle
	
	return myArr.delete_if { |i| i.length < 5 }
end

def alphabetShuffleAndMore()
	myArr = ("a".."z").to_a
	print "original #{myArr}\n"
	myArr = myArr.shuffle
	print "shuffled #{myArr}\n"
	print "first: #{myArr[0]}\nlast #{myArr[-1]}"
	print "\nfirst letter is a vowel!" if myArr[0] =~ /[aeiou]/
end

def generateArrayOfRandoms()
	randoms = []
	
	for i in 1..10
		randoms.push(rand(55..100).round())
	end
	
	return randoms
end

def generateRandsAndDisplay()
	randoms = generateArrayOfRandoms()
	randoms = randoms.sort
	print "sorted randoms #{randoms}"
	print "\nmin #{randoms[0]}"
	print "\nmax #{randoms[-1]}"
end

def generateRandomString()
	str = ""
	
	for i in 1..5
		str += (65 + rand(26)).chr	
	end
	
	return str
end

def generateArrayOfRandStrings()
	rands = []
	
	for i in 1..10
		str = ""
		
		for j in 1..5
			str += (65 + rand(26)).chr	
		end
		
		rands.push(str)	
	end
	
	return rands
end


puts "\nprintArrayThenSome #{printArrayThenSome([3,5,1,2,7,9,8,13,25,32])}"
puts ""
puts "\nshuffleArrayThenSome #{shuffleArrayThenSome(["John","KB","Oliver","Cory","Matthew","Christopher"])}"
puts ""
puts "\nalphabetShuffleAndMore completed above! #{alphabetShuffleAndMore()}"
puts ""
puts "generateArrayOfRandoms #{generateArrayOfRandoms()}"
puts ""
puts "\ngenerateRandsAndDisplay #{generateRandsAndDisplay()}"
puts ""
puts "generateRandomString #{generateRandomString()}"
puts ""
puts "generateArrayOfRandStrings #{generateArrayOfRandStrings()}"
