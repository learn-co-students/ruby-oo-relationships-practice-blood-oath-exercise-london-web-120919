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

    def self.follower_ages
        @@all.map {|follower| follower.age}
    end

    def self.of_a_certain_age(this_age)
        # @@all.select {|follower| follower.age == this_age}
        self.follower_ages.select {|follower_age| follower_age == this_age}
    end

    # def my_cults #I created this method for myself, it returnts all the cults i'm in.
    #     Bloodoath.all.select{|cults|cults.follower == self}
    # end

    def my_cults_slogan
        my_cults.map{|my_oaths| my_oaths.cult.slogan}
    end

    def self.most_active
        @@all.max_by{|follower| follower.cults.length}
    end

    def self.top_ten
        #sara code: 
        @@all.sort_by{|follower| follower.cults.length}.reverse[0...11]
    end


end