class Ride
  # belongs_to :driver
  # belongs_to :passenger


  attr_reader :driver, :passenger, :rating

  def initialize(driver, passenger, rating)
    @driver = driver
    @passenger = passenger
    @rating = rating
  end

end
