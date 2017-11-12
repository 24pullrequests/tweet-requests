#!/usr/bin/env rake

require './lib/tweet_requests/client'
require './lib/tweet_requests/tweet'

task default: :send_current_tweets

desc "Send tweets for the current date and hour"
task :send_current_tweets do
  tw = TweetRequests::Client.new(consumer_key: ENV['CONSUMER_KEY'],
                                consumer_secret: ENV['CONSUMER_SECRET'],
                                access_token: ENV['ACCESS_TOKEN'],
                                access_secret: ENV['ACCESS_SECRET'])
  tw.send_current_tweets
end

# task to test things
