class Driver

  # has_many :rides
  # has_many :passengers, through: :rides

 attr_reader :name

 def initialize(name)
   @name = name
 end

 def self.drivers
   Driver.all
 end
 #- Create a class method that returns all instances of the driver class.


 def my_rides
   Ride.all.select do |ride|
     ride.driver == self
   end
 end

 def my_passengers
   my_rides.map do |ride|
     ride.passenger
   end
 end


end
