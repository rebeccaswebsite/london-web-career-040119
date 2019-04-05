class Customer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def book_a_ride(driver)
    Ride.new(driver, self)
  end

  def rides
    Ride.all.select { |ride| ride.customer == self }
  end

  def drivers
    rides.map { |ride| ride.driver }.uniq
  end

end
