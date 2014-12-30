#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'

#
# this is the script for the twitter bot auto_startup
# generated on 2014-12-30 10:16:50 -0800
#

consumer_key '57KnppBuiD5F1f1hCxC9PmSqb'
consumer_secret 'H6NkCZ1NzEn28pmHhK2Gp4EfAFPwe3AAOzeDTseKxlLIJxsY15'

secret '1K6XiPNoNMjBY81rOy8wsbL935QDwpa4oP2XpKIGRhbjP'
token '2945345922-ZVk4FwbTDtno3wj3YjSyagnNMvsbKapsFebVnWe'

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

startup = YAML.load_file("startups.yml")
thing = YAML.load_file("things.yml")

def tweet(startup, thing)
	"Like #{startup}, but for #{thing}"
end

loop do |tweet|

	puts tweet(startup.sample, thing.sample)

	sleep 60

end

# search "keyword" do |tweet|
#  reply "Hey #USER# nice to meet you!", tweet
# end

# replies do |tweet|
#   reply "Yes #USER#, you are very kind to say that!", tweet
# end
