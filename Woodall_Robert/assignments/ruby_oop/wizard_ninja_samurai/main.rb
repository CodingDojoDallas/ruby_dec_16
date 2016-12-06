require_relative "wizard"
require_relative "ninja"
require_relative "samurai"

w1 = Wizard.new
n1 = Ninja.new
s1 = Samurai.new
s2 = Samurai.new

# wizard/ninja duel
w1.attack(n1).fireball(n1)
n1.attack(w1).steal.get_away
w1.displayStats
n1.displayStats

# samurai duel
s1.attack(s2).death_blow(s2)
s2.meditate.death_blow(s1)
s1.displayStats
s2.displayStats
