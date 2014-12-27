require 'yaml'

startup = YAML.load_file("startups.yml").sample
thing = YAML.load_file("things.yml").sample

def tweet(startup, thing)
	"Like #{startup}, but for #{thing}"
end

puts tweet(startup, thing)