class Driver

 attr_reader :name

@@all = []

  def initialize(name)
     @name = name
     @@all << self
  end

  def self.all
   @@all
  end

#Gets all the rides associated with a driver
  def allrides
    Ride.all.select do |ride|
       ride.driver == self
    end
  end

#Get all the passsengers associated with this driver
  def passengers
     self.allrides.map do |ride|
       ride.passenger.name
    end
  end

end
