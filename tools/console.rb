require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

shii = Cult.new("shhh","London",2011,"we are the best")
soooo = Cult.new("Yoho","Readdin",2017,"say sth")
lon = Cult.new("Jus","London", 2016, "LEast")

sam = Follower.new("Sam",24,"peace")
bab = Follower.new("Bab",55, "okay")
mari = Follower.new("Mary",66,"Hey")
javad = Follower.new("Jav",43,"ahhhh")

blo1 = BloodOath.new(shii, sam, "2018/12/09")
blo2 = BloodOath.new(soooo,bab,"2019/01/02")
blo3 = BloodOath.new(shii,mari,"2019/12/03")
blo4 = BloodOath.new(soooo,sam, "2017/01/09")
blo5 = BloodOath.new(shii, bab,"2016/09/06")
blo6 = BloodOath.new(lon, javad, "2018/11/11")
blo7 = BloodOath.new(lon, bab, "2018/11/11")


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits