# Object Oriented - Many to Many

## Domain: Uber clone

## Steps followed:
- Create a `Driver` class with a `name` attribute
- Create a `Customer` class with a `name` attribute
- What's linking them together?
- Try creating a customer array in the drivers and viceversa
- Realise that we are breaking the SSoS (Single source of truth)
- So if storing arrays is not good enough, how to we link them?
- Find the concept that links these 2 classes together: The `Ride`
- Create a ride class that belongs to both a `Driver` and a `Customer`
- `Ride.all` is now our source of truth connecting these 2 together
- Add more info about the ride, like `date` and `price`
- Start to create methods inside each class to work with the data we have:
  - Deliverables:
  - `driver.rides` get all rides for this driver
  - `driver.customers` get all customers for this driver
  - `customer.rides` get all rides for this customer
  - `customer.customers` get all rides for this customer
  - `customer.book_a_ride(driver)` create a new ride for this customer
  - `driver.revenue` get all the money made by this driver
  - `Driver.highest_revenue` find the driver with the highest revenue
  - `Ride.find_by_date(date)` find all rides with a specific date
