# encoding: utf-8

Gem::Specification.new do |gem|
  gem.name        = 'kramdown-metadata-parsers'
  gem.version     = "0.9.0"
  gem.authors     = [ 'Arne Brasseur' ]
  gem.email       = [ 'arne@arnebrasseur.net' ]
  gem.description = 'Parse Markdown/Kramdown with YAML metadata'
  gem.summary     = gem.description
  gem.homepage    = 'https://github.com/plexus/kramdown-metadata-parsers'
  gem.license     = 'MIT'

  gem.require_paths    = %w[lib]
  gem.files            = `git ls-files`.split($/)
  gem.test_files       = `git ls-files -- spec`.split($/)
  gem.extra_rdoc_files = %w[README.md]

  gem.add_runtime_dependency 'kramdown', '>= 1.4'
end
