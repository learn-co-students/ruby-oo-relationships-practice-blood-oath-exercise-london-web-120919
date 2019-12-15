class Follower

    attr_accessor :cult, :name, :age, :life_motto, :bloodoath 

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self 
    end

    def self.all
        @@all
    end 

    def list_of_follower_cults #returns an Array of this follower's cults
        BloodOath.all.select {|cult| follower.cult == self}
    end 

    def cults
        list_of_follower_cults.count 
    end 

    def join_cult(cult, initiation_date) #akes in an argument of a Cult instance and adds this follower to the cult's list of followers
        BloodOath.new(cult, self, initiation_date)
    end

    def self.of_a_certain_age(age)# returns an Array of followers who are the given age or older
        all.select {|follower| follower.age == age}
    end 
end 