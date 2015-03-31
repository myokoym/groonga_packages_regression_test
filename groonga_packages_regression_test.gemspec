# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'groonga_packages_regression_test/version'

Gem::Specification.new do |spec|
  spec.name          = "groonga_packages_regression_test"
  spec.version       = GroongaPackagesRegressionTest::VERSION
  spec.authors       = ["Masafumi Yokoyama"]
  spec.email         = ["yokoyama@clear-code.com"]

  spec.summary       = %q{A testing tool for Groonga packages.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/myokoym/groonga_packages_regression_test"
  spec.license       = "LGPLv2.1+"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) {|f| File.basename(f)}
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("dockerfiroonga", ">= 0.0.3")
  spec.add_runtime_dependency("thor")

  spec.add_development_dependency("test-unit", ">= 3.0.0")
  spec.add_development_dependency("test-unit-notify")
  spec.add_development_dependency("bundler")
  spec.add_development_dependency("rake")
end
