class Tweet
  attr_reader :message, :user
  @@all = []

  def initialize(message, user)
    @message = message
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end

  def self.longest_tweet
    @@all.max_by { |tweet| tweet.message.length }
  end

end
