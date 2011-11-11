# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sqlite3_ar_regexp/version"

Gem::Specification.new do |s|
  s.name        = "sqlite3_ar_regexp"
  s.version     = SQLite3ARRegexp::VERSION
  s.authors     = ["Aaron Lasseigne"]
  s.email       = ["alasseigne@sei-mi.com"]
  s.homepage    = "https://github.com/sei-mi/sqlite3_ar_regexp"
  s.summary     = %q{Adds REGEXP support for SQLite3 in ActiveRecord.}
  s.description = %q{Adds REGEXP support for SQLite3 in ActiveRecord.}

  s.rubyforge_project = "sqlite3_ar_regexp"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'sqlite3'
  s.add_runtime_dependency 'activerecord', '~> 3.0'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
end
