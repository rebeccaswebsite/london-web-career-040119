require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# code here
g1 = Guest.new("Nicolas")
g2 = Guest.new("Elle")
g3 = Guest.new("Xabi")
g4 = Guest.new("Xabi")
g5 = Guest.new("Xabi")

l1 = Listing.new("London")
l2 = Listing.new("L.A.")
l3 = Listing.new("Buenos Aires")
l4 = Listing.new("Buenos Aires")
l5 = Listing.new("Buenos Aires")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l2, g1)
t3 = Trip.new(l3, g1)
t4 = Trip.new(l1, g2)
t5 = Trip.new(l2, g2)
t6 = Trip.new(l3, g2)
t7 = Trip.new(l1, g3)
t9 = Trip.new(l1, g1)
t10 = Trip.new(l2, g2)
t11 = Trip.new(l2, g2)
t12 = Trip.new(l2, g2)

Pry.start
