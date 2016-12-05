class String
  def my_reverse
    word = self.split("")
    r = (word.length-1)..0
    new_word = ""

    r.first.downto(r.last).each { |i| new_word += word[i] }
    new_word
  end

  def my_reverse!
    reverse = self.my_reverse.split("")
    for i in 0...reverse.length
      self[i] = reverse[i]
    end
    self
  end

end

string ="hello"
puts string.my_reverse
puts string

puts string.my_reverse!
puts string
