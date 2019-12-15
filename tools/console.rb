require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("Cult1", "London", "2019", "If you can't be a good role model, be a bad example")
c2 = Cult.new("Cult2", "Paris", "2018", "Slogan Cult 2")
c3 = Cult.new("Cult3", "London", "2017", "Slogan Cult 3" )

follower1 = Follower.new("Mariola", "32", "Life Motto")
follower2 = Follower.new("Gabi", "35", "Life Motto 2")
follower3 = Follower.new("Simon", "36", "Life Motto 3")
follower4 = Follower.new("Asia", "30", "Life Motto 4")

bloodoath1 = BloodOath.new(c1, follower2, "2019/12/13")
bloodoath2 = BloodOath.new(c2, follower3, "2019/09/09")
bloodoath3 = BloodOath.new(c3, follower1, "2-19/06/07")
bloodoath4 = BloodOath.new(c3, follower4, "2019/12/13")

binding.pry 


puts "Mwahahaha!" # just in case pry is buggy and exits



