# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'full_time/version'

Gem::Specification.new do |spec|
  spec.name    = 'full_time'
  spec.version = FullTime::VERSION
  spec.author  = 'Andrew Babichev'
  spec.email   = 'andrew.babichev@gmail.com'

  spec.summary     = 'Simple CV DSL'
  spec.description = 'Handle your CV like a pro'
  spec.homepage    = 'https://github.com/Tensho/full_time'
  spec.license     = 'MIT'

  spec.post_install_message = "Thanks for installing full_time!"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec|features)/}) }
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }

  spec.required_ruby_version = '~> 2.0'

  spec.add_dependency 'tilt'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
