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

newCult = Cult.new("newer","London",2019,"meh")

# newOath = Bloodoath.new(likeWhat,sara,"2019-12-13")

# likeWhat.recruit_follower(sara,"2019-12-13")
likeWhat.recruit_follower(renata,"2019-12-12")
newPact = Bloodoath.new(likeWhat,sara,"8877")
newPact = Bloodoath.new(newCult,sara,"8877")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
