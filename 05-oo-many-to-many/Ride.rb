class Ride

  attr_reader :driver, :customer, :date, :price
  @@all = []

  def initialize(driver, customer, date, price)
    @driver = driver
    @customer = customer
    @date = date
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_date(date)
    @@all.select { |ride| ride.date == date }
  end

end
