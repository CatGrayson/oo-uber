class Passenger
  # has_many :rides
  # has_many :drivers, through: :rides

  attr_reader :name
  attr_accessor :rides

  def initialize(name, rating, rides)
    @name = name
    @rating = rating
    @rides = []
  end

  def self.passengers
    Passenger.all
  end
  # - Create a class method that returns all instances of the passenger class.

  def my_rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def my_drivers
    my_rides.map do |ride|
      ride.driver
    end
  end

  def add_ride(ride)
    new_ride = Ride.new(driver, self)
    @rides << new_ride
    new_ride
  end
  # - Create a method in the Passenger class that takes in a driver argument and creates
  # a new ride.


end
