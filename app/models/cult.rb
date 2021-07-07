class Cult

    attr_reader :name, :founding_year
    attr_accessor :location, :slogan

    @@all = []
    
    def initialize(name,location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower,initiation_date)
        BloodOath.new(self,follower,initiation_date)
    end

    def my_follower
        BloodOath.all.select{|follower|follower.cult == self}
    end

    def cult_population
        my_follower.count 
    end

    def self.find_by_name(this_cult)
        @@all.select{|cult| cult.name == this_cult}
    end

    def self.find_by_location(this_loc)
        @@all.select{|cult| cult.location == this_loc}
    end

    def self.find_by_founding_year(year)
        @@all.select{|cult|cult.founding_year == year}
    end

    def average_age
        my_follower.map{|follower_list|follower_list.follower.age}.reduce(:+).to_f / cult_population
    end

    def my_followers_mottos
      mottos = my_follower.map{|follower_list|follower_list.follower.life_motto}
      mottos.each{|motto| p motto}
    end

    def self.least_popular
        least = 100
        least_popular = nil
         self.all.each do |cult|
            if cult.cult_population < least
                least =  cult.cult_population
                least_popular = cult
            end
          end
        least_popular
    end

    def self.most_common_location
        # common = self.all.inject(Hash.new(0)) { |h,v| h[v] +=1; h}
        # common.max_by { |v| common[v]} 
        # # this_cult.location
        self.all.min_by {|cult| cult.location}.location
    end




end
