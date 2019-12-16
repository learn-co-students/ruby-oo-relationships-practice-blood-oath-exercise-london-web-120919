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

    def cults #returns an Array of this follower's cults
        BloodOath.all.select {|cult| cult.follower == self}
    end 

    def join_cult(cult, initiation_date) #takes in an argument of a Cult instance and adds this follower to the cult's list of followers
        BloodOath.new(cult, self, initiation_date)
    end

    def self.of_a_certain_age(age)# returns an Array of followers who are the given age or older
        all.select {|follower| follower.age == age}
    end 

    def self.average_age
        ages = self.all.map {|follower| follower.age.to_i}
        ages.reduce(:+).to_f / self.all.length
    end 
end 