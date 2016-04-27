Gem::Specification.new do |spec|
  spec.name          = 'suwabara'
  spec.version       = '0.0.1'
  spec.authors       = ['Peter Zotov']
  spec.email         = ['whitequark@whitequark.org']
  spec.description   = %q{Asset storage engine}
  spec.summary       = %q{Asset storage engine}
  spec.homepage      = 'http://github.com/whitequark/suwabara'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency 'mime-types',      '~> 2.4.3'
  spec.add_dependency 'mimemagic',       '~> 0.2.1'
  spec.add_dependency 'mini_magick',     '~> 4.0.1'
  spec.add_dependency 'streamio-ffmpeg', '~> 2.0.0'

  spec.add_dependency 'rack',            '~> 1.6.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'minitest',  '~> 5.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'activerecord', '~> 4.2.0'
  spec.add_development_dependency 'activerecord-nulldb-adapter'
end
