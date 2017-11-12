#!/usr/bin/env rake

# task to tweet things
require './lib/tweet_requests/client'
require './lib/tweet_requests/tweet'

tw = TweetRequests::Client.new(consumer_key: ENV['CONSUMER_KEY'],
                              consumer_secret: ENV['CONSUMER_SECRET'],
                              access_token: ENV['ACCESS_TOKEN'],
                              access_secret: ENV['ACCESS_SECRET'])
tw.send_current_tweets

# task to test things
