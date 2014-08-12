# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rattributes'

Gem::Specification.new do |spec|
  spec.name          = "rattributes"
  spec.version       = Rattributes::VERSION
  spec.authors       = ["Cameron Martin"]
  spec.email         = ["cameronmartin123@gmail.com"]
  spec.description   = %q{Read-only structs for ruby}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/cameron-martin/rattributes"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", '~> 3.0'
  spec.add_development_dependency "rspec-its", '~> 1.0'
end
