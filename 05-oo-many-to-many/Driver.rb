class Driver
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select { |ride| ride.driver == self }
  end

  def customers
    repeated_customers = rides.map { |ride| ride.customer }.uniq
  end

  def revenue
    prices = rides.map { |ride| ride.price }
    prices.sum
  end

  def self.highest_revenue
    @@all.max_by { |driver| driver.revenue }
  end

end
