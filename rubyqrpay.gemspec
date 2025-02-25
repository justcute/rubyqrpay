# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubyqrpay/version"

Gem::Specification.new do |spec|
  spec.name          = "rubyqrpay"
  spec.version       = Rubyqrpay::VERSION
  spec.authors       = ["Egor Shpalov"]
  spec.email         = ["egorshpalov1998@gmail.com"]
  spec.summary       = "Ruby prompt pay QR-code generator"
  spec.homepage      = "https://github.com/begateway/rubyqrpay"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry-byebug"
  spec.add_runtime_dependency "dry-validation", "~> 0.11"
  spec.add_runtime_dependency "dry-core", "~> 0.4.7"
  spec.add_runtime_dependency "money", "~> 6.10"
  spec.add_runtime_dependency "countries", "~> 2.1"
  spec.add_runtime_dependency "iso639", "~> 1.3"
  spec.add_runtime_dependency "rqrcode", "~> 0.10"
end
