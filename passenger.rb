class Passenger

  attr_reader :name

@@all = []

  def initialize(name)
     @name = name
     @@all << self
  end

  def self.all
    @@all
  end

#Get all the drivers associated with that passenger
  def drivers
    #First, I have to get all my rides
     myrides = Ride.all.select do |ride|
       ride.passenger == self
     end

     myrides.map do |ride|
         ride.driver
     end

  end

end
