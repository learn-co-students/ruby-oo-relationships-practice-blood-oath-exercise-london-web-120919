class BloodOath

  attr_reader :cult, :follower

  def initialize (cult:, follower:)
    @cult = cult
    @follower = follower
    @@all << self
  end

  # create a method that returns a string that is the initiation date of this blood oath
  def initiation_date
  end

  # create a method (bloodOath.all) that returns an array of all the bloadOaths
  @@all = []

  def self.all
    @@all
  end
end