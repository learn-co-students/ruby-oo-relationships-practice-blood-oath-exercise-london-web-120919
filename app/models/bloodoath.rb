class Bloodoath
    attr_reader :initiation_date, :follower, :cult

    @@all = []


    def initialize(cult,follower,initiation_date)
        @cult = cult
        @follower = follower
        @initiation_date = initiation_date
        #Jo code:
        # @initiation_date = "#{Time.year,now}-#{Time.month,now}-#{Time.day,now}"
        @@all << self
    end
    def self.all
        @@all
    end
    def self.first_oath
        @@all.min_by {|oaths| oaths.initiation_date}
    end
end