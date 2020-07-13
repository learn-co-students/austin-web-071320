class User
  attr_reader :username, :tweets




  def initialize(username)
    @username = username
    @tweets = []
  end

  def post_tweet(message)
    tweet = Tweet.new(message, self)

    add_tweet(tweet)
  end

  def add_tweet(tweet)
    self.tweets << tweet
  end

  # def tweets
  #   Tweet.all.select do |tweet|
  #     #binding.pry
  #     tweet.user == self
  #   end
  # end

end
