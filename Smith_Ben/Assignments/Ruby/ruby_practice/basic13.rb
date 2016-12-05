# ------ PRINT 1-255 ---------------------
puts (1..255).to_a
# ------ PRINT ODD NUMBER 1-255-----------
puts (1..255).select(&:odd?)
#------- PRINT SUM -----------------------
sum=0
(1..255).each {|n| puts "New Number: #{n} Sum: #{sum+=n}"}

#------- ITTERATE THROUGH ARRAY ----------
[1, 3, 5, 7, 9, 13].each {|x| puts x}
#------- FIND MAX ------------------------
a = [-3,-5,-7]
puts a.max
#-------- GET AVERAGE --------------------
x = [2,10,3]
puts x.reduce(:+)/x.length
#-------- ARRAY WITH ODD NUMBERS ---------
puts (1..255).select(&:odd?)
#-------- GREATER THAN Y -----------------
y = 3
count = 0
[1, 3, 5, 7].each {|x| if x>y then count += 1 end}
	puts count
#-------- SQUARE THE VALUES --------------
a=[1, 5, 10, -2]
puts a.collect {|i| i*i}
#-------- ELIMINATE NEGATIVE NUMBERS -----
[1,5,10,7,-2].each {|x| if x>0 then puts x else puts 0 end}
#-------- MAX, MIN, AVERAGE --------------
x = [1,23,4,5,6,7,8,9] 
puts x.max, x.min, x.reduce(:+)/x.length
#-------- SHIFTING VALUES IN THE ARRAY ---
x = [1, 2, 3, 4, 55, 66, 7]
x.shift(1); x.push(0); puts x
#-------- NUMBER TO STRING ---------------
[-1,-3,2].each {|x| if x>0 then puts x else puts "Dojo" end}



