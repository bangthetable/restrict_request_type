# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'restrict_request_type/version'

Gem::Specification.new do |spec|
  spec.name          = "restrict_request_type"
  spec.version       = RestrictRequestType::VERSION
  spec.authors       = ["Unnikrishnan KP", "Aaditya Suresh"]
  spec.email         = ["unni@bangthetable.com", "aaditya@bangthetable.com"]
  spec.description   = %q{Allow only specific request formats to a controller action}
  spec.summary       = %q{Allow only specific request formats to a controller action}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
