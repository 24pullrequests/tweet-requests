# frozen_string_literal: true
require 'yaml'

module TweetRequests
  class Tweet
    def initialize(tweet_yaml)
      @tweet_yaml = tweet_yaml
    end

    def text
      @tweet_yaml['text']
    end

    def current?
      @tweet_yaml['hour'] == Time.now.hour &&
        @tweet_yaml['day'] == Date.today.day &&
        @tweet_yaml['month'] == Date.today.month
    end

    def self.load_tweets
      load_yaml['tweets'].map{|tweet_yaml| new(tweet_yaml) }
    end

    def load_yaml
      YAML.load_file('tweets.yml')
    end
  end
end
