require_relative './Tweet.rb'
require_relative './User.rb'
require 'pry'

nico = User.new("Nico")
xabi = User.new("Xabi")

t1 = Tweet.new("My first tweet! #cool", nico)
t2 = Tweet.new("My second tweet! #cool", nico)
t3 = Tweet.new("My third tweet! #cool", nico)
t4 = Tweet.new("Uhmmmm, I always have questions...", xabi)
t5 = Tweet.new("*shrugs* I need coffee.", xabi)

xabi.create_tweet("I like cats! #alsodogs")
nico.create_tweet("I like dogs! #alsocats")
nico.create_tweet("OMG THIS TWEET IS SO LOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOONG!!!")

binding.pry
"eof"
