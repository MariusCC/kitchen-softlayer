# Encoding: UTF-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen/driver/softlayer_version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-softlayer'
  spec.version       = Kitchen::Driver::SOFTLAYER_VERSION
  spec.authors       = ['Neill Turner']
  spec.email         = ['neillwturner@gmail.com']
  spec.description   = 'A Test Kitchen Softlayer driver'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/test-kitchen/kitchen-softlayer'
  spec.license       = 'Apache'
  candidates = Dir.glob('{lib}/**/*') + ['README.md', 'LICENSE.txt', 'CHANGELOG.md', 'kitchen-softlayer.gemspec']
  spec.files = candidates.sort
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 1.9.3'
  spec.add_dependency 'test-kitchen', '~> 1.4'
  spec.add_dependency 'fog', '~> 1.18'
  spec.add_dependency 'fog-softlayer', '~> 0.4'
end