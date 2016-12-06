a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]

count = 0
names.each { |names| count += 1 }
puts "You got #{count} names in the 'names' array"

# puts "The name is '#{names[0].values.join(" ")}'"

# puts "The name is '#{names[1].values.join(" ")}'"

names.each { |name| puts "The name is " + name.values.join(" ")}