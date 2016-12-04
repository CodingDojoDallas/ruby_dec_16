arr1 = [3,5,1,2,7,9,8,13,25,32]
puts "Print the sums of all numbers in the array"

puts "The sum is: #{arr1.reduce(:+)}"
puts "The array with numbers grater than 10 is: #{arr1.find_all{|n| n>10}}"

puts
arr2 =["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
puts "The names has been shuffled: "
print arr2.shuffle
puts
puts "Print all the name that are greater than 5 chracters"

arr2.each{|name| if name.length>5 then puts name end }

arr3 = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
puts "Alphabet has been shuffled and the last letter is shown"
arr4 = arr3.shuffle
puts arr4.last
if arr4[0]=="a" or arr4[0]=="e" or arr4[0]=="i" or arr4[0]=="o" or arr4[0]=="u"
	puts "This is a vowel #{arr4[0]}"
	else
	puts arr4[0]
end

puts "Generating 10 randmo number"
arr5=[]
i=1
for i in 1..10
	arr5.push(rand(55..100))
end

print arr5

arr5.sort!
puts
print arr5
puts "The lowest number is: #{arr5.min} and the higest is #{arr5.max}"

puts
5.times{print rand(65..90).chr}
puts
arr6 = []
10.times{arr6.push((1..5).map{ rand(65..90).chr})}
print arr6