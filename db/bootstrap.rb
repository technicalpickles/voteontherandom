Bootstrapper.for :development do |b|
  b.run :the_random
  b.run :battle
end

Bootstrapper.for :production do |b|
end

Bootstrapper.for :test do |b|
end


Bootstrapper.for :the_random do |b|
  ["Jenga", "Kathy Lee Gifford", "Kitten", "Tie Rack", "Sports Bra!", "GPS", "Carrot", "Scheme", "Physics", "NAND Gates"].each do |name|
    TheRandom.create!(:name => name)
  end
end

Bootstrapper.for :battle do |b|
  choose(TheRandom.all, 2).each do |the_randoms|
    battle = Battle.create!
    battle.battle_matchups.create(:the_random => the_randoms.first)
    battle.battle_matchups.create(:the_random => the_randoms.last)
  end
end
