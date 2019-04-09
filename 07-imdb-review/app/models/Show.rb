class Show

  attr_reader :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def on_the_big_screen
    match = Movie.all.find { |movie| movie.title == self.title }
    if match != nil
      true
    else
      false
    end
  end

end
