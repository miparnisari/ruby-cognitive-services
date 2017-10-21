# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'ruby-cognitive-services'
  spec.version       = '1.0.0'
  spec.authors       = ['miparnisari']
  spec.email         = ['maineparnisari@gmail.com']
  spec.summary       = 'Microsoft Cognitive Services SDK for Ruby'
  spec.homepage      = 'https://github.com/miparnisari/ruby-cognitive-services'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.add_development_dependency 'bundler', '~> 1.15.4'
  spec.add_development_dependency 'rake', '~> 12.1.0'
  spec.add_development_dependency 'rspec', '~> 3.7.0'
end