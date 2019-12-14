class Follower


    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize(name,age,life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        BloodOath.all.select{|cult| cult.follower == self}
    end

    def cults_count
        cults.length
    end

    def join_cult(cult,initiation_date)
        BloodOath.new(cult,self,initiation_date)
    end

    def self.of_a_certain_age(this_age)
        @@all.select{|follower| follower.age == this_age}
    end

    def my_cults_slogans
        cult.each{|cult| pust cult.slogan }
    end

    def self.most_active
      active = 0
      most_active = nil
      self.all.each do |follower|
        if follower.cults_count > active
            active = follower.cults_count
            most_active = follower
        end
      end
      most_active
    end

    def self.top_ten
        tops = self.all.sort_by {|follower| follower.cults_count}.reverse[0...11]
       # arra[0...11] it returns first 10
    end

    def fellow_cult_members
        #BloodOath.all.cults.select{|follower| follower == self}
        
    end

end
