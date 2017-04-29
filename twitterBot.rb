#!/usr/bin/env ruby
require 'dotenv/load'
require 'twitter'

search_options = {
  result_type: "mixed"
}

client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['CONSUMER_KEY']
  config.consumer_secret = ENV['CONSUMER_SECRET']
  config.access_token = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end

tweet_array = []
client.search("@GudetamaEnglish", search_options).take(10).each do |tweet|
  tweet_array << tweet
  end
x = 0
begin
client.retweet(tweet_array[x])
rescue
x += 1
client.retweet(tweet_array[x])
puts "success"
end
