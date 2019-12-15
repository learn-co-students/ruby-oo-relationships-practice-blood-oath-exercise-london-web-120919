require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
follo1 = Follower.new(name:"abe", age: 21, life_motto: "don't knock it till you try it")
follo2 = Follower.new(name:"Ana", age: 22, life_motto: "what doesn't kill you makes you stronger..hopefully")


cult1 = Cult.new(name: "scientology", location: "las vegas", founding_year: 1973, slogan: "tom the impossible cruise")
cult2 = Cult.new(name: "manson crew", location: "california",founding_year: 1967, slogan: "once upon a time in hollywood")
# cult1.recruit_follower(follo1)


#  follo1.join_cult(cult2)




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
