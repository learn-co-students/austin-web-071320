class Like
  attr_accessor  :user, :tweet

  @@all = []

  def self.all
    @@all
  end

  def initialize(user, tweet)
    @user = user
    @tweet = tweet
    @@all << self
  end

end

class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :tweet

  like = Like.create(user_1, tweet_1)
end 
