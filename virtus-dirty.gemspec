# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'virtus/dirty_attribute/version'

Gem::Specification.new do |spec|
  spec.name          = "virtus-dirty_attribute"
  spec.version       = Virtus::DirtyAttribute::VERSION
  spec.authors       = ["Adam Hawkins"]
  spec.email         = ["adam@hawkins.io"]
  spec.description   = %q{Dirty Tracking for Virtus objects}
  spec.summary       = %q{}
  spec.homepage      = "https://github.com/ahawkins/virtus-dirty_attribute"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'virtus', "~> 1.0.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end
