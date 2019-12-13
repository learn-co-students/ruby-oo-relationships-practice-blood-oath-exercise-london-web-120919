class Follower
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name,age,life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def cults
        Bloodoath.all.select {|cult| cult.follower == self}
    end

    def join_cult(cult,initiation_date)
        Bloodoath.new(cult,self,initiation_date)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(this_age)
        @@all.select {|follower| follower.age == this_age}
    end

end