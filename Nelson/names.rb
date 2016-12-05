rb = {:f_n => "Zeke", :l_n => "Elliot"}
qb = {:f_n => "Dak", :l_n => "Prescott"}
wr = {:f_n => "Dez", :l_n => "Bryant"}
ol = {:f_n => "Zach", :l_n => "Martin"}
te = {:f_n => "Jason", :l_n => "Witten"}
cboys = [rb, qb, wr, ol, te]

puts "You got " + cboys.count.to_s + " players from the Cowboys."

cboys.select { |cboys|
	puts "The player's name is "	+ cboys.values.join(" ")
}
