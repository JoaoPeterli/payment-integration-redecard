# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'payment-integration-redecard/version'

Gem::Specification.new do |spec|
  spec.name          = "payment-integration-redecard"
  spec.version       = PaymentIntegrationRedecard::VERSION
  spec.authors       = ["Joao Luiz Peterli"]
  spec.email         = ["joao.luiz.peterli@gmail.com.br"]

  spec.summary       = %q{Gem Responsible for integration with redecard}
  spec.description   = %q{This is a way to facilitate transactions with the network-card API with transaction, pre-authorization and reverse payment requests.}
  spec.homepage      = "https://github.com/JoaoPeterli/payment-integration-redecard"
 
  spec.license           = 'MIT-CMU'

  SPEC.FILES         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
 

  spec.add_dependency "bundler", "~> 1.13"
  spec.add_dependency "rake", "~> 10.0"
  spec.add_dependency "uuidtools", "~> 2.1"
  spec.add_dependency "rspec", "3.6.0" 
  spec.add_dependency "rest-client", "~> 1.6"
end
