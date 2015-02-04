# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acme/base64_hexagrams/version'

Gem::Specification.new do |spec|
  spec.name          = "acme-base64_hexagrams"
  spec.version       = Acme::Base64Hexagrams::VERSION
  spec.authors       = ["nullkal"]
  spec.email         = ["nullkal@nil.nu"]
  spec.summary       = %q{Encodes/decodes Base64 written in hexagrams, the figures used in I Ching.}
  spec.description   = %q{
    If you were to be an onmyoji (an yin-yang exorcist), this gem would help your work.

    This gem provides the functions that encodes/decodes Base64 written in hexagrams, the figures used in I Ching.
    The API is compatible with the Base64 library in the Ruby Standard Library, so it is very easy to make your application more yin-yang-ful.}
  spec.homepage      = "https://github.com/nullkal/acme-base64_hexagrams"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
