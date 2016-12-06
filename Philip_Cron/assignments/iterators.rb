#any? [{ |obj| block }] → true or false
#Passes each element of the collection to the given block. The method returns true if the block ever #returns a value other than false or nil. If the block is not given, Ruby adds an implicit #block of { |obj| obj } that will cause any? to return true if at least one of the collection #members is not false or nil.

%w[ant bear cat].any? { |word| word.length >= 3 } #=> true
%w[ant bear cat].any? { |word| word.length >= 4 } #=> true
[nil, true, 99].any?                              #=> true

# each { |item| block } → ary
# each → Enumerator
# Calls the given block once for each element in self, passing that element as a parameter.

# An Enumerator is returned if no block is given.

a = [ "a", "b", "c" ]
a.each {|x| print x, " -- " }


# collect { |item| block } → new_ary
# collect → Enumerator
# Invokes the given block once for each element of self.

# Creates a new array containing the values returned by the block.

# See also Enumerable#collect.

# If no block is given, an Enumerator is returned instead.

a = [ "a", "b", "c", "d" ]
a.collect { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]
a.map.with_index{ |x, i| x * i } #=> ["", "b", "cc", "ddd"]
a                                #=> ["a", "b", "c", "d"]

# map! {|item| block } → ary
# map! → Enumerator
# Invokes the given block once for each element of self, replacing the element with the value returned by the block.

# See also Enumerable#collect.

# If no block is given, an Enumerator is returned instead.

a = [ "a", "b", "c", "d" ]
a.map! {|x| x + "!" }
a #=>  [ "a!", "b!", "c!", "d!" ]
a.collect!.with_index {|x, i| x[0...i] }
a #=>  ["", "b", "c!", "d!"]

# find(ifnone = nil) { |obj| block } → obj or nil 
# find(ifnone = nil) → an_enumerator
# Passes each entry in enum to block. Returns the first for which block is not false. If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.

# If no block is given, an enumerator is returned instead.

(1..10).detect   { |i| i % 5 == 0 and i % 7 == 0 }   #=> nil
(1..100).find    { |i| i % 5 == 0 and i % 7 == 0 }   #=> 35

# find_all { |obj| block } → array
# find_all → an_enumerator
# Returns an array containing all elements of enum for which the given block returns a true value.

# If no block is given, an Enumerator is returned instead.

(1..10).find_all { |i|  i % 3 == 0 }   #=> [3, 6, 9]

[1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]

# reject { |obj| block } → array
# reject → an_enumerator
# Returns an array for all elements of enum for which the given block returns false.

# If no block is given, an Enumerator is returned instead.

(1..10).reject { |i|  i % 3 == 0 }   #=> [1, 2, 4, 5, 7, 8, 10]

[1, 2, 3, 4, 5].reject { |num| num.even? } #=> [1, 3, 5]

# upto(limit) {|i| block } → self
# upto(limit) → an_enumerator
# Iterates the given block, passing in integer values from int up to and including limit.

# If no block is given, an Enumerator is returned instead.

# For example:

5.upto(10) { |i| print i, " " }
#=> 5 6 7 8 9 10

