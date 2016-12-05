require_relative 'ninja'
require_relative 'samurai'
require_relative 'wizard'

ace = Ninja.new
bob = Samurai.new
timmy = Samurai.new
amy = Wizard.new

bob.death_blow timmy
bob.how_many

ace.steal bob

amy.fireball bob

bob.meditate
