

require 'yaml'

startup = YAML.load_file("startups.yml")
thing = YAML.load_file("things.yml")

def tweet(startup, thing)

	"Like #{startup}, but for #{thing}"
end

loop do
	
	puts tweet(startup.sample, thing.sample)

	sleep 300

end

