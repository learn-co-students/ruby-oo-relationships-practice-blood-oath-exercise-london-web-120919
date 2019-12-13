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

end