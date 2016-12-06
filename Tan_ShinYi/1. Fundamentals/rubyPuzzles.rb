# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. ]
# Print the sum of all numbers in the array. Also have the function return an
# array that only include numbers that are greater than 10 (E.g. when you pass
# the array above, it should return an array with the values of 13,25,32 - hint:
# use reject or find_all method)

    # x= [3,5,1,2,7,9,8,13,25,32]
    # puts x.inject(0){|sum,x| sum+x}
    # print x.find_all{|i| i>10}

# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher.
# Shuffle the array and print the name of each person. Have the program also return an array
# with names that are longer than 5 characters.

    # x= ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
    # x.shuffle!
    # puts x
    # y = x.find_all{|i| i.length>5}
    # print y

# Create an array that contains all 26 letters in the alphabet (this array must
# have 26 values). Shuffle the array and display the last letter of the array.
# Have it also display the first letter of the array. If the first letter in the
#array is a vowel, have it display a message

    # a= ('a'..'z').to_a
    # b=["a", "e", "i", "o", "u"]
    # a.shuffle!
    # print a
    #
    # if b.any?{|i| i==a.first}
    #   puts "first letter is a vowel"
    # else
    #   puts a.first
    # end
    # puts a.last

# Generate an array with 10 random numbers between 55-100.

    # y=[]
    # for i in 0..9
    #   y.push(rand(55..100))
    # end
    # print y

# Generate an array with 10 random numbers between 55-100 and have it be sorted
#(showing the smallest number in the beginning). Display all the numbers in the
#arrays. Next, display the minimum value in the array as well as the maximum
#value.

    # y.sort!
    # print y
    # puts y.min, y.max

# Create a random string that is 5 characters long (hint: (65+rand(26)).chr
# returns a random character)

    # a=""
    # for i in 0..4
    #   a+=(65+rand(26)).chr
    # end
    # puts a

# Generate an array with 10 random strings that are each 5 characters long

    def randomStr()
      a=""
      for i in 0..4
        a+=(65+rand(26)).chr
      end

      return a
    end


    y=[]
    for i in 0..9
      y.push(randomStr())
    end
    print y
