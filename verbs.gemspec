# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "verbs/version"

Gem::Specification.new do |s|
  s.name = 'verbs'
  s.version = Verbs::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors = ["Andy Rossmeissl"]
  s.description = %q{Conjugates most common english verbs for all persons, tenses, standard aspects, and modern moods (with active diathesis). Standard and exceptional spelling rules are obeyed.}
  s.summary = %q{English verb conjugation in Ruby}
  s.email = %q{andy@rossmeissl.net}
  s.homepage = %q{http://github.com/rossmeissl/verbs}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'bueller'
  s.add_development_dependency 'test-unit'
  s.add_dependency 'activesupport'
  s.add_dependency 'i18n'
end
