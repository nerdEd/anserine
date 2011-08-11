Gem::Specification.new do |s|
  s.name        = 'anserine'
  s.version     = '0.0.0'
  s.date        = '2011-08-10'
  s.summary     = 'Migrate from one remote git repository to another'
  s.description = 'Migrate from one remote git repository to another'
  s.authors     = ['Ed Schmalzle']
  s.email       = 'ed@nerded.net'
  s.files       = ['lib/anserine.rb']
  s.executables << 'anserine'
  s.homepage    = 'http://www.edschmalzle.com'

  s.add_runtime_dependency 'git', '~> 1.2'
end
