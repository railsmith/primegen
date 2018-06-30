
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "primegen/version"

Gem::Specification.new do |spec|
  spec.name          = "primegen"
  spec.version       = Primegen::VERSION
  spec.authors       = ["harshit"]
  spec.email         = ["harshit.sk@hotmail.com"]

  spec.summary       = %q{ A rubygem to generate a multiplication table of first n primes.}
  spec.description   = %q{ A command line utility which prints first n primes. }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "thor", "~> 0.20"
  spec.add_dependency "terminal-table", "~> 1.8.0"
end
