# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple_twitter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Peter Jones"]
  gem.email         = ["pjones@pmade.com"]
  gem.description   = %q{Super simple class for searching Twitter.}
  gem.summary       = %q{Shows how to search Twitter and work with JSON data.}
  gem.homepage      = "https://github.com/devalot/simple_twitter"
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "simple_twitter"
  gem.require_paths = ["lib"]
  gem.version       = SimpleTwitter::VERSION
  gem.add_dependency('httparty', '~> 0.8.3')
end
