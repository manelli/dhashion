# encoding: utf-8
Gem::Specification.new do |spec|
  spec.name          = 'dhashion'
  spec.version       = '0.0.2'
  spec.authors       = 'Martin Manelli'
  spec.email         = 'manelli.ml@gmail.com'
  spec.files         = ['lib/dhashion.rb']
  spec.summary       = 'dHash in Ruby.'
  spec.description   = 'Lagrangian dHash in Ruby.'
  spec.homepage      = 'http://github.com/manelli/dhashion'
  spec.license       = 'MIT'

  spec.add_runtime_dependency 'rmagick', '~> 2.13', '>= 2.13.4'
end
