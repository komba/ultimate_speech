# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ultimate_speech/version"

Gem::Specification.new do |s|
  s.name        = "ultimate_speech"
  s.version     = UltimateSpeech::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Eugene Russkikh"]
  s.email       = ["eugene@russkikh.org.ua"]
  s.homepage    = ""
  s.summary     = %q{UltimateSpeech (russian language)}
  s.description = %q{Генерация речей для политиков и всякое такое}

  s.rubyforge_project = "ultimate_speech"

  s.add_runtime_dependency("i18n")

  s.add_development_dependency("rspec")
  s.add_development_dependency("rspec-core")
  s.add_development_dependency("webmock")


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
