# frozen_string_literal: true

require 'yaml'

# load all tweets from tweets.yml
all_tweets = YAML.load_file('tweets.yml')['tweets']

# find tweets matching the current date and time
tweets = all_tweets.select do |tweet|
  tweet['hour'] == Time.now.hour &&
    tweet['day'] == Date.today.day &&
    tweet['month'] == Date.today.month
end

# setup the twitter client
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.access_token        = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_SECRET']
end

# send each tweets
tweets.each do |tweet|
  client.update(tweet[:text])
end
