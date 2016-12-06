load 'wizard.rb'
load 'ninja.rb'
load 'samurai.rb'

wizard = Wizard.new
ninja  = Ninja.new
samuari1 = Samurai.new
samuari2 = Samurai.new

puts "wizard health: #{wizard.health}"
puts "ninja health: #{ninja.health}"
puts "samurai1 health: #{samuari1.health}"
puts "samurai2 health: #{samuari2.health}"

puts "*** test ninja methods ****"

ninja.steal(wizard)
ninja.get_away()

puts "wizard health: #{wizard.health}"
puts "ninja health: #{ninja.health}"
puts "samurai1 health: #{samuari1.health}"
puts "samurai2 health: #{samuari2.health}"

puts "*** test wizard methods ***"

wizard.heal()
wizard.fireball(ninja)

puts "wizard health: #{wizard.health}"
puts "ninja health: #{ninja.health}"
puts "samurai1 health: #{samuari1.health}"
puts "samurai2 health: #{samuari2.health}"


puts "*** samurai methods ***"

samuari1.death_blow(wizard)
wizard.attack(samuari1)
samuari1.how_many()

puts "wizard health: #{wizard.health}"
puts "ninja health: #{ninja.health}"
puts "samurai1 health: #{samuari1.health}"
puts "samurai2 health: #{samuari2.health}"

puts "*** samurai full  health test ***"
puts "back to full  health"

samuari1.meditate()

puts "samurai1 health: #{samuari1.health}"
