class Bloodoath
    attr_reader :initiation_date, :follower, :cult

    @@all = []


    def initialize(cult,follower,initiation_date)
        @cult = cult
        @follower = follower
        @initiation_date = initiation_date
        @@all << self
    end
    def self.all
        @@all
    end
    def self.first_oath
        @@all.first #I know they want by date, but I don't know how to do it

    end

end