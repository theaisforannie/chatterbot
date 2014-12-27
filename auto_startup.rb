require 'yaml'

YAML.load_file("auto_startup.yml")

consumer_key '%{consumer_key}'
consumer_secret '%{consumer_secret}'

secret '%{secret}'
token '%{token}'

startup = YAML.load_file("startups.yml")
thing = YAML.load_file("things.yml")

def tweet(startup, thing)
	"Like #{startup}, but for #{thing}"
end

loop do

	puts tweet(startup.sample, thing.sample)

	sleep 60

end