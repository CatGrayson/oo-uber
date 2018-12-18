class Ride

  attr_reader :driver, :passenger, :rating

  @@all = []

  def initialize(driver, passenger, rating)
      @driver = driver
      @passenger = passenger
      @rating = rating
      @@all << self
  end

  def self.all
    @@all
  end

end
