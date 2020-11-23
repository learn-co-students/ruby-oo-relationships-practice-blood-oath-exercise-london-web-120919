class Cult
    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name,location,founding_year, slogan)
        @name = name
        @location = location 
        @founding_year = founding_year 
        @slogan = slogan

        @@all << self
    end
    def recruit_follower(follower,initiation_date)
        Bloodoath.new(self,follower,initiation_date)
    end
    def myOaths #show me all the oaths to my cult
        Bloodoath.all.select {|oath| oath.cult == self}
    end
    def followers 
        myOaths.map {|followers| followers.follower}
    end

    def cult_population 
        self.myOaths.count    
    end

    def self.all #shows me all the cults created
        @@all
    end

    def self.find_by_name(cult_name) #when you want to call Class.method, it needs self.method to be called
        @@all.select {|cult| cult.name == cult_name}
    end

    def self.find_by_location(cult_location) #when you want to call Class.method, it needs self.method to be called
        @@all.select {|cult| cult.location == cult_location}
    end

    def self.find_by_founding_year(cult_founding_year) #when you want to call Class.method, it needs self.method to be called
        @@all.select {|cult| cult.founding_year == cult_founding_year}
    end

    def average_age
        all_the_age = myOaths.map {|follower_list| follower_list.follower.age}.reduce(:+).to_f 
        all_the_age / cult_population
    end

    def my_followers_mottos
        mottos = myOaths.map {|follower_list| follower_list.follower.life_motto}
        mottos.each {|motto| puts motto}
    end

    def self.least_popular
        @@all.min_by{|oaths| oaths.myOaths.count}
    end

    def self.most_popular
        @@all.max_by{|oaths| oaths.myOaths.count}
    end

    def self.most_common_location
        @@all.find{|cults| cults ==  self.most_popular}.location 
        # self.all.max_by {|cult| self.all.count(cult.location)}.location #(cult.location) it's going to count stuff that has the atribute inside ()
       
    end
end