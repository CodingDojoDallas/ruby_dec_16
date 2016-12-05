class Fixnum
  def prev
    return self-1
  end

  def skip
    return self+2
  end

  def double
    return self+self
  end
end

puts 3.prev
puts 3.prev.prev

puts 3.skip
puts 3.skip.skip

puts 3.double
puts 3.double.double
