class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def tweets
    Tweet.all.select { |tweet| tweet.user == self }
  end

  def create_tweet(message)
    Tweet.new(message, self)
  end

  def tweet_messages
    tweets.map { |tweet| tweet.message }
  end

  def longest_tweet
    tweets.max_by { |tweet| tweet.message.length }
  end

end
