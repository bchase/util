# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'util/version'

Gem::Specification.new do |spec|
  spec.name          = "util"
  spec.version       = Util::VERSION
  spec.authors       = ["Brad Chase"]
  spec.email         = ["brad@webappfromscratch.com"]
  spec.summary       = %q{My Ruby Swiss Army Knife}
  spec.description   = %q{My Ruby Swiss Army Knife}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "virtus"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end
