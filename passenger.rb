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
    #First get all of your rides
     myrides = Ride.all.select do |ride|
       ride.passenger == self
     end

     #Then map over your rides to get the drivers associated with that ride
     myrides.map do |ride|
         ride.driver
     end

  end

end
