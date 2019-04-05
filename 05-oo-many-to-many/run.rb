require 'pry'
require_relative './Driver.rb'
require_relative './Customer.rb'
require_relative './Ride.rb'

d1 = Driver.new("The Stig")
d2 = Driver.new("Fangio")
d3 = Driver.new("Hamilton")

c1 = Customer.new("Mary Poppins")
c2 = Customer.new("Dumbo")
c3 = Customer.new("Aladdin")

r1 = Ride.new(d1, c1, '05/04/2019', 3.50)
r2 = Ride.new(d2, c1, '06/04/2019', 5.50)
r3 = Ride.new(d3, c1, '07/04/2019', 10.50)
r4 = Ride.new(d3, c2, '10/04/2019', 5000.0)
r5 = Ride.new(d3, c3, '20/04/2019', 234567890.50)
r6 = Ride.new(d3, c1, '20/04/2019', 23456789.50)
r7 = Ride.new(d3, c2, '20/04/2019', 9991293921391239213921931293.20)
r8 = Ride.new(d3, c3, '10/04/2019', 32141353513412412321431.01)
r9 = Ride.new(d1, c1, '01/04/2019', 0.01)

binding.pry
puts "Mischief managed!"
