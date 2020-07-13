require_relative './tweet.rb'
require_relative './user.rb'
require_relative './like.rb'

sad_rabbit = User.new("sad rabbit")
tweet_1 = Tweet.new("hello world",sad_rabbit)

sad_rabbit.tweets
require 'pry'
