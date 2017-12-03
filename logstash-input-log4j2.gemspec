Gem::Specification.new do |s|
  s.name            = 'logstash-input-log4j2'
  s.version         = '5.2'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "Read events over a TCP socket from a Log4j2 SocketAppender"
  s.description     = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Jurriaan Mous"]
  s.email           = 'jurmous@jurmo.us'
  s.homepage        = "https://github.com/jurmous/logstash-log4j2"
  s.require_paths = ["lib"]

  # Files
  #s.files = `git ls-files`.split($\)+::Dir.glob('vendor/*')


  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  s.platform = 'java'

  s.add_runtime_dependency 'logstash-codec-plain'

  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"

  s.add_development_dependency 'logstash-devutils'
  s.add_development_dependency 'flores'
end
