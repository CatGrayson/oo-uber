require 'pry'
require_relative './driver.rb'
require_relative './passenger.rb'
require_relative './ride.rb'

tez = Driver.new('Tez')
brit = Driver.new('Brit')

blair = Passenger.new('Blair')
arthur = Passenger.new('Arthur')
sarah = Passenger.new('Sarah')

ride1 = Ride.new(tez,blair, 5)
ride2 = Ride.new(brit, arthur, 5)
ride3 = Ride.new(tez, sarah, 3)

binding.pry
