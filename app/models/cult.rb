
class Cult
  
  # put attribute accessor which will be able to read name(string), location(string),
  # founding year(fixnum) slogan(string) and cult population(instance variable)

  attr_accessor :name, :location, :founding_year, :slogan
  # create a class variable (all) that will hold all the instances of the Cult class
  
  @@all = []

  # initialized with a name(string), location(string), founding year(fixnum), slogan(string),
  def initialize (name:, location:, founding_year:, slogan:)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @followers = []
    @@all << self
  end

    # create a method that recruits a follower (recruit_follower) instance.  It takes in an argument
  # of a follower (instance of follower class) and adds them to the cults list of followers (cult_pop)
  # which is an instance variable  
  def recruit_follower(follower)
    @followers << follower
    follower.cults << self
    BloodOath.all << self
  end

  def followers
    @followers
  end
  
  # make a class method called cult_pop
    def cult_population
      @followers.count
      # follower.all.select {|followers| followers.cults.name == self.name }.count
    end

  # create a class method (@@all) that reaturns a list of all of the cults
  def self.all
    @@all
  end

  # create a method (cult.find_by_name) that accepts a string argument of cult's name and returns 
  # a cult instance whose name is equal to that argument by searching the .all instance variable 
  def self.find_by_name(cult_name)
    @@all.find{|cults|cults.name == cult_name}
  end
  
  # create a method (cult.find_by_location) that accepts a string argument that is a location and returns
  # an array of cults that are in that location by searching the .all instance variable
  def self.find_by_location(location)
    @@all.find{|cults|cults.location == location}
  end

  # create method that takes an argument (integer) that is a year and returns all
  # of the cults that were founded in that year by searching the .al instance variable.
  def self.find_by_founding_year(founding_year)
    @@all.find{|cults|cults.founding_year == founding_year}
  end


end 