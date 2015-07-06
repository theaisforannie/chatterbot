#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'
require 'psych'

#
# this is the script for the twitter bot auto_startup
# generated on 2014-12-30 10:16:50 -0800
#

consumer_key ENV['CONSUMER_KEY']
consumer_secret ENV['CONSUMER_SECRET']

secret ENV['SECRET']
token ENV['TOKEN']

# remove this to send out tweets
# debug_mode

# remove this to update the db
no_update
# remove this to get less output when running
verbose

# here's a list of users to ignore
blacklist "abc", "def"

# here's a list of things to exclude from searches
exclude "hi", "spammer", "junk"

startup = YAML.load_file("bin/startups.yml")
thing = YAML.load_file("bin/things.yml")

def content(startup, thing)
	"Like #{startup}, but for #{thing}"
end

# loop do |tweet|

random = rand
thing_random = rand
if random < 0.33
	if thing_random < 0.33
		obj_of_preposition = startup.sample
	else
		obj_of_preposition = thing.sample
	end
	tweet content(startup.sample, obj_of_preposition)
	puts "your tweet was a success! rand was #{random}\n"
else
	puts "aw, not this time. rand was #{random}\n"
end


	# update_config

# end

# search "keyword" do |tweet|
#  reply "Hey #USER# nice to meet you!", tweet
# end

# replies do |tweet|
#   reply "Yes #USER#, you are very kind to say that!", tweet
# end
