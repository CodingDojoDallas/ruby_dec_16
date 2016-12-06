    # Print 1-255
    # Write a program (sets of instructions) that would print all the numbers from 1 to 255.

# (1..255).each {|i| puts i}

    # Print odd numbers between 1-255
    # Write a program (sets of instructions) that would print all the odd numbers from 1 to 255.

# puts (1..255).reject {|i| i%2==0}

    # Print Sum
    # Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:
    #
    # New number: 0 Sum: 0
    # New number: 1 Sum: 1
    # New Number: 2 Sum: 3
    # New number: 3 Sum: 6
    # New Number: 255 Sum: ___.
    # Do NOT use an array to do this exercise.

# sum=0
# (0..255).each{|i| puts "New number: #{i} Sum: #{sum+=i}"}

# (0..255).to_a.inject(0){|sum,n| sum+n}

    # Iterating through an array
    # Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen.  Being able to loop through each member of the array is extremely important.

# [1,3,5,7,9,13].each{ |i| puts i}

    # Find Max
    # Write a program (sets of instructions) that takes any array and prints the maximum value in the array. Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero.

# puts [-3, -5, -7, 0, 10].max

    # Get Average
    # Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3], your program should print an average of 5. Again, make sure you come up with a simple base case and write instructions to solve that base case first, then test your instructions for other complicated cases. You can use a count function with this assignment.

# sum=0
# [-3, -5, -7, 0, 10].each{ |i| sum+=i }
# puts sum/[-3, -5, -7, 0, 10].length

    # Array with Odd Numbers
    # Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].

# y = []
# y.push((1..255).find_all {|i| i%2==1})

    # Greater Than y
    # Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y. For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 (since there are two values in the array that are greater than 3).

# puts [-3, -5, -7, 0, 10].count{|i| i>-5}

    # Square the values
    # Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself.  When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].

# print [1, 5, 10, -2].collect{|i| i*i}

    # Eliminate Negative Numbers
    # Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0.  When the program is done, x should have no negative values, say [1, 5, 10, 0].

# puts [1, -5, 10, -2].map! { |x| x <0 ? 0 : x }

    # Max, Min, and Average
    # Given any array x, say [1, 5, 10, -2], create an algorithm that prints the maximum number in the array, the minimum value in the array, and the average of the values in the array.

# sum=0
# a = [1, 5, 10, -2]
# a.each{|i| sum+=i }
# puts "minimum of the array is... " + a.min.to_s
# puts "maximum of the array is... " + a.max.to_s
# puts "average of the array is... " + (sum/a.length).to_s

    # Shifting the values in the array
    # Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front.  For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].

# x= [1, 5, 10, 7, -2]
# x.shift.push(0)
# x.push(0)
# print x

    # Number to string
    # Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'.  For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].

print [-1, -3, 2].map! { |x| x <0 ? "Dojo" : x }
