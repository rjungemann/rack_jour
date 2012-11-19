# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack_jour/version'

Gem::Specification.new do |gem|
  gem.name          = "rack_jour"
  gem.version       = RackJour::VERSION
  gem.authors       = ["Roger Jungemann", "Christian Rishøj"]
  gem.email         = ["roger@thefifthcircuit.com"]
  gem.description   = %q{Exposes your rack app over Bonjour.}
  gem.summary       = %q{Exposes your rack app over Bonjour.}
  gem.homepage      = "http://github.com/thefifthcircuit/rack_jour"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "dnssd"
end
