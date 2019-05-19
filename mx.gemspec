
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mx/version"

Gem::Specification.new do |spec|
  spec.name          = "mx"
  spec.version       = Mx::VERSION
  spec.authors       = ["vshatravenko"]
  spec.email         = ["vshatravenko@heliostech.fr"]

  spec.summary       = %q{MX}
  spec.description   = %q{A truly modular CLI for modern cloud and beyond}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
