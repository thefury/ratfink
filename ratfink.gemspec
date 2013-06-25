# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ratfink/version'

Gem::Specification.new do |gem|
  gem.name          = "ratfink"
  gem.version       = Ratfink::VERSION
  gem.authors       = ["Trevor Oke"]
  gem.email         = ["trevor@trevoroke.com"]
  gem.description   = "runs user defined consistency checks" 
  gem.summary       = "ruby health monitoring" 
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }

  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'colorize', '~> 0.5'
  gem.add_development_dependency 'rspec', '~> 2.6'
  gem.add_development_dependency 'guard', '~> 1.7'
  gem.add_development_dependency 'guard-rspec', '~> 2.5'
  gem.add_development_dependency 'rb-readline', '~> 0.4'
  gem.add_development_dependency 'rb-inotify', '~> 0.9'
end
