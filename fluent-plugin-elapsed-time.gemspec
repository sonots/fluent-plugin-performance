# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-elapsed-time"
  gem.version     = "0.0.7"
  gem.authors     = ["Naotoshi Seo"]
  gem.email       = "sonots@gmail.com"
  gem.homepage    = "https://github.com/sonots/fluent-plugin-elapsed-time"
  gem.description = "Fluentd plugin to measure elapsed time to process messages"
  gem.summary     = gem.description
  gem.licenses    = ["MIT"]
  gem.has_rdoc    = false

  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency "fluentd"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rspec-its"
  gem.add_development_dependency "pry"
  gem.add_development_dependency "pry-nav"
end
