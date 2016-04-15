# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alfa_bank/version'

Gem::Specification.new do |spec|
  spec.name          = 'alfa_bank'
  spec.version       = AlfaBank::VERSION
  spec.authors       = ['lvl0nax']
  spec.email         = ['lvl0nax@gmail.com']

  spec.summary       = %q{AlfaBank api adapter.}
  spec.description   = %q{AlfaBank api adapter provides friendly interface for comunication with AlfaBank REST API.}
  spec.homepage      = 'https://github.com/lvl0nax/alfa_bank'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.0.0'

  rails_versions = '~> 4.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'activerecord', rails_versions
end
