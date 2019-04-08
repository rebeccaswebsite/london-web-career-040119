class Listing
  attr_reader :city
  @@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select { |trip| trip.listing == self }
  end

  def guests
    trips.map { |trip| trip.guest }.uniq
  end

  def trip_count
    trips.length
  end

  def self.find_all_by_city(city)
    @@all.select { |listing| listing.city == city }
  end

  def self.most_popular
    @@all.max_by { |listing| listing.trip_count }
  end

end
