# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.name          = "trippered"
  gem.authors       = ["Luca Capanna"]
  gem.email         = ["johntitorwastaken@gmail.com"]
  gem.description   = %q{Trippered}
  gem.summary       = %q{Trippered}
  gem.homepage      = "https://github.com/motoreagattoimburrato/trippered"
  gem.files         = `git ls-files`.split($\)
  gem.executables   = ["tripper"]
  gem.version       = "0.1.0"
  gem.add_development_dependency 'rake'
  #gem.add_dependency 'httparty', '~> 0.12.0'
  #gem.add_dependency 'stamp'
end
