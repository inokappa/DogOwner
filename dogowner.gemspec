# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogowner/version'

Gem::Specification.new do |spec|
  spec.name          = "dogowner"
  spec.version       = Dogowner::VERSION
  spec.authors       = ["Yohei Kawahara(kappa)"]
  spec.email         = [""]
  spec.summary       = %q{Manage 'Monitor' for datadog}
  spec.description   = %q{Manage 'Monitor' for datadog}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "thor"
  spec.add_dependency "dogapi"
  spec.add_dependency "terminal-table"
end
