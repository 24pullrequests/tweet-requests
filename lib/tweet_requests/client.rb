# frozen_string_literal: true

module TweetRequests
  class Client
    def initialize(consumer_key: , consumer_secret: , access_token: , access_secret:)
      @consumer_key    = consumer_key
      @consumer_secret = consumer_secret
      @access_token    = access_token
      @access_secret   = access_secret
    end

    def tweets
      Tweet.load_tweets
    end

    def current_tweets
      tweets.select(&:current?)
    end

    def send_current_tweets
      current_tweets.each{|tweet| send_tweet(tweet) }
    end

    def send_tweet(tweet)
      twitter_client.update(tweet[:text])
    end

    private

    def twitter_client
      Twitter::REST::Client.new do |config|
        config.consumer_key        = @consumer_key
        config.consumer_secret     = @consumer_secret
        config.access_token        = @access_token
        config.access_token_secret = @access_secret
      end
    end
  end
end
