# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yamlable/version'

Gem::Specification.new do |spec|
  spec.name          = 'yamlable'
  spec.version       = Yamlable::VERSION
  spec.authors       = ['folkengine']
  spec.email         = ['gaoler@electronicpanopticon.com']

  spec.summary       = 'To and from yaml methods.'
  spec.description   = 'Making it easier to go to and from yaml in Objects.'
  spec.homepage      = 'https://github.com/folkengine/yamlable'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f|
    f.match(%r{^(test|spec|features)/})
  }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1.5'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
