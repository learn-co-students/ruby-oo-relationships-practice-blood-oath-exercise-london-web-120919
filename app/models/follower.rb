class Follower
  # put an attribute reader that can read follower's name, age, life motto
  # and cults
  attr_accessor :name, :age, :life_motto

  @@all = []
  # create an initialize method that initializes with a name(string), age(num),
  # life motto (string) and cults (array). push self into .all instance variable
  def initialize (name:, age:, life_motto:)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  # create a method (cults) that returns an array of this followers cults
  def cults 
    @cults
  end
  
  # create a method (#join_cult)that takes an argument of the cult name(string) and adds this
  # follower(self) to the cult's list of followers (instance variable cult_pop inside of the cult class)
  def join_cult(cult)
    Bloodoath.new(cult, self) 
  end
  
  # create an instance variable(all) that returns an array of all the followers
  def self.all
    @@all
  end 

  # create a method that(follower.of_a_certain_age) takes a fixnum argument that
  # is an age (num) and returns an array of followers who are the given age or older
  def self.follower_of_a_certain_age (age)
    @@all.select{|followers|followers.age >= age}
  end
end