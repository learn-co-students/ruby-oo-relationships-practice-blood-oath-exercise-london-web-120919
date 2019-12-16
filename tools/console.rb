require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

likeWhat = Cult.new("friendly","London",2019,"YOLO")
sara = Follower.new("Sara",30,"peace")
renata = Follower.new("Renata",99, "til ma death")
may = Follower.new("May",26,"Pokemon")

newCult = Cult.new("newer","London",2019,"meh")

# newOath = Bloodoath.new(likeWhat,sara,"2019-12-13")

# likeWhat.recruit_follower(sara,"2019-12-13")
likeWhat.recruit_follower(renata,Time.new(2014,5,13))
newPact = Bloodoath.new(likeWhat,sara,Time.new(2010,10,13))

aDate = Time.new

newPact = Bloodoath.new(newCult,sara,Time.new(2019,10,10))

10.times do
  Bloodoath.new(newCult,may,Time.new(2013,10,13))
end


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
