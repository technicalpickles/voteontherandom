Bootstrapper.for :development do |b|
  b.run :the_random
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
