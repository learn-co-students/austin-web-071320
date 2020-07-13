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

  def username
    user.username
  end

  def liked_tweets
    # return an array of all the users that have liked this tweet
    # get all of the users
    # iterate through the users array
    # check if this tweet belongs to the current user in our iteration
    # User.all.select do |user|
    #   user.tweets.include?(self)
    # end

    likes = Like.all.select do |like|
      like.tweet == self
    end

    likes.collect do |like|
      like.user
    end

  end

end
