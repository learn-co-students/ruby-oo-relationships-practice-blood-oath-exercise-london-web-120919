class Cult

    attr_accessor :name, :follower, :founding_year, :slogan, :location, :bloodoath 
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan 
        @@all << self
    end

    def followers
        bloodoaths = BloodOath.all.select {|bloodoath| bloodoath.cult == self}
        followers = bloodoaths.map {|bloodoath| bloodoath.follower}
        bloodoaths
     end
#takes in an argument of a Follower instance 
#and adds them to this cult's list of followers
     def recruit_follower(follower, initiation_date)
        BloodOath.new(self, follower, initiation_date)
     end 

    def self.all
        @@all
    end 

    def follower_count #selects followers of this cult 
        BloodOath.all.select {|follower| follower.cult == self}
    end 

    def cult_population #returns the number of followers in this cult
    follower_count.length  
    end 

    def self.find_by_name(name_cult)#takes argument of name & returns a Cult with that name
        self.all.find {|cult| cult.name == name_cult}
    end 

    def self.find_by_location(location) #argument = location and returns an Array of cults that are in that location
        self.all.map {|cult| cult.location == location}
    end 

    def self.find_by_founding_year(year) # argument = year and returns all of the cults founded in that year
        self.all.map {|cult| cult.founding_year == year}
    end 

    def self.least_popular
        self.all.min_by {|cult| cult.cult_population}
    end 

    def self.most_common_location
        self.all.max_by {|cult| self.all.count(cult.location)}
    end 
end 
